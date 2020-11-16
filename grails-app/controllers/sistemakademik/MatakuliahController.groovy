package sistemakademik

import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN", "ROLE_USER"])
class MatakuliahController {

    def index() {
        def matkul = MataKuliah.list()
        [listmatkul:matkul]
    }

    def create() {}

    def save() {
        def matkul = new MataKuliah(params)
        if (matkul.validate()) {
            matkul.save flush: true, failOnError: true
            redirect action:"index"
        } else {
            flash.message = "Masukkan semua data dengan benar"
            redirect action: "create"
        }
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
