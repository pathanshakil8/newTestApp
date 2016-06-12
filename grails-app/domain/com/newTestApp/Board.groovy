package com.newTestApp

class Board {
	
	String name
	
	static hasMany = [photos: Photo]

    static constraints = {
		name nullable: false, blank: false, unique: true
    }
}
