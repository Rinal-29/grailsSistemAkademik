package sistemakademik

class RuanganController {

    def index() {
        def ruangan = Ruangan.list()
        [ruangan:ruangan]
    }

    def create() {
        def jurusan = Jurusan.list()
        def matkul = MataKuliah.list()
        [jurusan: jurusan, matkul: matkul]
    }

    def save() {
        def ruangan = new Ruangan(params)
        ruangan.save flush:true, failOnError: true
        redirect action:"index"
    }
}
