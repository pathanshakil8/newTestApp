package com.newTestApp

import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class PublicController {
	
	def springSecurityService

    def photos() {
		List photos = []
		if(params.search) {
			photos = Photo.findAllByTagIlike('%' + params.search + '%')
		} else {
			photos = Photo.list()
		}
		[photos: photos]
	}
	
	@Secured(['ROLE_USER'])
	def boards() {
		def currentUser = springSecurityService.currentUser
		[boards: currentUser.boards.sort{ it.id }]
	}
	
	@Secured(['ROLE_USER'])
	def boardPhotos() {
		Board board = Board.findById(params.id)
		Set photos = board.photos
		[photos: photos]
	}
	
	@Secured(['ROLE_USER'])
	def saveBoard() {
		def currentUser = springSecurityService.currentUser
		Board newBoard = new Board(name: params.boardName).save(flush: true)
		currentUser.addToBoards(newBoard)
		currentUser.save(flush: true)
		flash.message = 'Board Added Successfully!'
		redirect action: 'photos'
	}
}
