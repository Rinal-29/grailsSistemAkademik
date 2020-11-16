package sistemakademik

import grails.plugin.springsecurity.annotation.Secured
import sistemakademik.auth.User

@Secured(["ROLE_ADMIN"])
class UserController {

    def index() {
        def user = User.list()
        [users:user]
    }

    def create() {}

    def save() {
        def user = new User(params)
        user.save flush:true, failOnErorr: true
        redirect action: "index"
    }
}
