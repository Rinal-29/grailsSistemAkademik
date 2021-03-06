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

    def edit() {
        def jurusan = Jurusan.get(params.id)
        [jurusan: jurusan]
    }

    def update() {
        def jurusan = Jurusan.get(params.id)
        jurusan.properties = params
        jurusan.save flush:true, failOnError: true
        redirect action: "index"
    }

    def delete() {
        def jurusan = Jurusan.get(params.id)
        jurusan.delete()
        redirect action: "index"
    }

    def detail() {
        def jurusan = Jurusan.get(params.id)
        def mahasiswa = Mahasiswa.findAllByJurusan(jurusan)
        [mahasiswa: mahasiswa]
    }
}
