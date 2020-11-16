package sistemakademik

class RegisterController {

    def index() {}

    def save () {
        def akun = new Admin(params)
        if (akun.validate()) {
            akun.save flush:true, failOnError: true
            redirect action:"index", controller:"login"
        } else {
            flash.message = "Lengkapi semua data dengan benar"
            redirect action: "index"
        }
    }
}
