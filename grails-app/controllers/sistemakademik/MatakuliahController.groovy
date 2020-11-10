package sistemakademik

class MatakuliahController {

    def index() {
        def matkul = MataKuliah.list()
        [listmatkul:matkul]
    }

    def create() {}

    def save() {
        def matkul = new MataKuliah(params)
        matkul.save flush: true, failOnError: true
        redirect action:"index"
    }

    def edit() {
        def matkul = MataKuliah.get(params.id)
        [matkul:matkul]
    }

    def update() {
        def matkul = MataKuliah.get(params.id)
        matkul.properties = params
        matkul.save flush:true, failOnError:true
        redirect action: "index"
    }

    def delete() {
        def matkul = MataKuliah.get(params.id)
        matkul.delete()
        redirect action: "index"
    }
}
