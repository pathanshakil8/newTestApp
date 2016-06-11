package com.newTestApp

import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.SpringSecurityUtils

@Secured('permitAll')
class LogoutController {

	/**
	 * Index action. Redirects to the Spring security logout uri.
	 */
	def index() {

		// TODO put any pre-logout code here
		redirect uri: SpringSecurityUtils.securityConfig.logout.filterProcessesUrl // '/j_spring_security_logout'
	}
}