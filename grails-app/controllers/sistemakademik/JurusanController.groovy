package sistemakademik

class JurusanController {

    def index() {
        def jurusan = Jurusan.list()
        [listJurusan: jurusan]
    }

    def create() {}

    def save() {
        def jurusan = new Jurusan(params)
        jurusan.save flush:true, failOnError: true
        redirect action: "index"
    }
}
