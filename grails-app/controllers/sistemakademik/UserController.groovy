package sistemakademik

import grails.plugin.springsecurity.annotation.Secured
import sistemakademik.auth.Role
import sistemakademik.auth.User
import sistemakademik.auth.UserRole

@Secured(["ROLE_ADMIN"])
class UserController {

    def index() {
        def user = UserRole.list()
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

            redirect(action: "index", controller: "user", params: [lang: params.lang])
        } else  {
            flash.message = "Lengkapi data anda dengan benar"
            redirect action: "create"
        }
    }

    def delete() {
        def user = User.get(params.id)
        user.delete()
        redirect action: "index"
    }

    def edit() {
        def user = User.get(params.id)
        [users: user]
    }
}
