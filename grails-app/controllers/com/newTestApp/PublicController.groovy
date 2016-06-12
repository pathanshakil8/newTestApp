package com.newTestApp

import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class PublicController {

    def photos() {
		List photos = []
		if(params.search) {
			photos = Photo.findAllByTagIlike('%' + params.search + '%')
		} else {
			photos = Photo.list()
		}
		[photos: photos]
	}
}
