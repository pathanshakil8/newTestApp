import com.newTestApp.Role
import com.newTestApp.Photo

class BootStrap {

    def init = { servletContext ->
		if(Role.list().size() == 0)
			new Role(authority: "ROLE_USER").save(flush: true)
		if(Photo.list().size() == 0) {
			new Photo(photoURL: "/assets/pics/1.jpg", tag: "first").save(flush: true)
			new Photo(photoURL: "/assets/pics/2.png", tag: "second").save(flush: true)
			new Photo(photoURL: "/assets/pics/3.png", tag: "third").save(flush: true)
			new Photo(photoURL: "/assets/pics/4.png", tag: "forth").save(flush: true)
			new Photo(photoURL: "/assets/pics/5.png", tag: "fifth").save(flush: true)
			new Photo(photoURL: "/assets/pics/6.png", tag: "sixth").save(flush: true)
			new Photo(photoURL: "/assets/pics/7.png", tag: "seventh").save(flush: true)
			new Photo(photoURL: "/assets/pics/8.png", tag: "eight").save(flush: true)
			new Photo(photoURL: "/assets/pics/9.jpg", tag: "ninth").save(flush: true)
		}
    }
    def destroy = {
    }
}
