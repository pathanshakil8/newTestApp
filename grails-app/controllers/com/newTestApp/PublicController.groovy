package com.newTestApp

import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class PublicController {

    def photos() {
		List photos = Photo.list()
		[photos: photos]
	}
}
