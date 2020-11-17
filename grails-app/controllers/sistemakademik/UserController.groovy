package sistemakademik

import grails.plugin.springsecurity.annotation.Secured
import sistemakademik.auth.Role
import sistemakademik.auth.User
import sistemakademik.auth.UserRole

@Secured(["permitAll"])
class UserController {

    def index() {
        def user = User.list()
        [users:user]
    }

    def create() {}

    def save() {
        def user = new User(params)

        if(user.validate()) {
            user.save flush:true, failOnErorr: true

            def role = Role.findWhere(authority: "ROLE_USER")
            if (!user.authorities.contains(role)) {
                UserRole.create(user, role, true)
            }

            redirect action: "auth", controller: "login"
        } else  {
            flash.message = "Lengkapi Data Anda"
            redirect action: "create"
        }
    }
}
