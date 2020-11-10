package sistemakademik

class RegisterController {

    def index() {}

    def save () {
        def akun = new Admin(params)
        akun.save flush:true, failOnError: true
        redirect action:"index", controller:"login"
    }
}
