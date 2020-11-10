package sistemakademik

class LoginController {

    def index() {}

    def account() {
        def account= Admin.findByEmailAndPassword(params.email, params.password)
        if(account) {
            redirect action:"index", controller:"mahasiswa"
        } else  {
            redirect action:"index", controller:"login"
            flash.message = "Invalid Username/Password, please try again."
        }
    }
}
