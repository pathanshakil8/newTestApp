import com.newTestApp.Role

class BootStrap {

    def init = { servletContext ->
		if(Role.list().size() == 0)
			new Role(authority: "ROLE_USER").save(flush: true)
    }
    def destroy = {
    }
}
