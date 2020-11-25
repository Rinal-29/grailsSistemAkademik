package mahasiswa

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured
import sistemakademik.Mahasiswa
import sistemakademik.auth.User

@Secured(["ROLE_USER"])
class UserMahasiswaController {
    SpringSecurityService springSecurityService

    def index() {
        def user = User.findByUsername(springSecurityService.principal.username)
        [user:user]
    }
}
