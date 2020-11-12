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
        def mahasiswa = Mahasiswa.list(params)

        def results

        if (params.kataKunci && params.cari) {
            switch (params.kataKunci) {
                case "nim" :
                    results = Mahasiswa.findAllByNim(params.cari)
                    break
                case "nama" :
                    results = Mahasiswa.findAllByNama(params.cari)
                    break
            }
        } else {
            results = mahasiswa
        }

        [mahasiswa: results]
    }

    def save () {
        def mahasiswa = new Mahasiswa(params)
        if (mahasiswa.validate()) {
            mahasiswa.save flush:true, failOnError:true
            redirect action: "list"
        } else {
            flash.message = "Masukkan semua data dengan benar"
            redirect action: "create"
        }
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
    def table(){

    }
}
