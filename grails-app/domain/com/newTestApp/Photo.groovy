package com.newTestApp

class Photo {

	String photoURL
	String tag
	
    static constraints = {
		photoURL nullable: false, blank: false
		tag nullable: false, blank: false
    }
}
