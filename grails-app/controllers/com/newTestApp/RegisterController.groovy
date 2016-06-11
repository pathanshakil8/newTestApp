package com.newTestApp

import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class RegisterController {

	def index() { }
	
	def register() {
		User user = User.findByUsername(params.username)
		if(user) {
			flash.message = "This username has already been taken.<br/>Please try a different username !"
			redirect (action: 'index')
		} else {
			User newUser = new User(username: params.username, password: params.password).save(flush: true)
			new UserRole(user: newUser, role: Role.findByAuthority("ROLE_USER")).save(flush: true)
		}
	}
}
