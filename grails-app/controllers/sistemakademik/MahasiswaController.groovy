package sistemakademik

class MahasiswaController {
    def index() {
        redirect action: "list"
    }

    def create() {
        def jurusan = Jurusan.list()
        [jurusan: jurusan]
    }

    def list () {
        def mahasiswa = Mahasiswa.list()
        [mahasiswa: mahasiswa]
    }

    def save () {
        def mahasiswa = new Mahasiswa(params)
        mahasiswa.save flush:true, failOnError:true
        redirect action: "list"
    }

    def edit() {
        def mahasiswa = Mahasiswa.get(params.id)
        def jurusan =  Jurusan.list()
        [mhs:mahasiswa, jurusan: jurusan]
    }

    def update() {
        def mhs = Mahasiswa.get(params.id)
        mhs.properties = params
        mhs.save flush:true, failOnError:true
        redirect action: "list"
    }

    def delete() {
        def mahasiswa = Mahasiswa.get(params.id)
        mahasiswa.delete()
        redirect action: "list"
    }
}
