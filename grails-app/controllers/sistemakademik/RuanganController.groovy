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
        if (ruangan.validate()) {
            ruangan.save flush:true, failOnError: true
            redirect action:"index"
        } else {
            flash.message = "Masukkan semua data dengan benar"
            redirect action: "create"
        }
    }

    def edit() {
        def ruangan = Ruangan.get(params.id)
        def jurusan = Jurusan.list()
        def matkul = MataKuliah.list()
        [ruangan: ruangan, jurusan: jurusan, matkul: matkul]
    }

    def update() {
        def ruangan = Ruangan.get(params.id)
        ruangan.properties = params
        ruangan.save flush:true, failOnError:true
        redirect action: "index"
    }

    def delete() {
        def ruangan = Ruangan.get(params.id)
        ruangan.delete()
        redirect action: "index"
    }
}
