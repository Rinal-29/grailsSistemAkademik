package sistemakademik

class LoginController {

    def index() {}

    def account() {
        def account= Admin.findByEmailAndPassword(params.email, params.password)
        if(account) {
            redirect action:"index", controller:"dashboard"
        } else  {
            redirect action:"index", controller:"login"
            flash.message = "Password atau Username Salah, Silahkan Ulangi lagi!"
        }
    }
}
