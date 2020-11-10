package sistemakademik

class DosenController {

    def index () {
        def dosen = Dosen.list()
        [listDosen: dosen]
    }

    def create() {
        def jurusan = Jurusan.list()
        [jurusan: jurusan]
    }

    def save() {
        def dosen = new Dosen(params)
        dosen.save flush: true, failOnErorr: true
        redirect action: "index", controller:"dosen"
    }

    def edit() {
        def dosen = Dosen.get(params.id)
        def jurusan = Jurusan.list()
        [dosen: dosen, jurusan: jurusan]
    }

    def update() {
        def dosen = Dosen.get(params.id)
        dosen.properties = params
        dosen.save flush: true, failOnError:true
        redirect action: "index"
    }

    def delete() {
        def dosen = Dosen.get(params.id)
        dosen.delete()
        redirect action: "index"
    }
}
