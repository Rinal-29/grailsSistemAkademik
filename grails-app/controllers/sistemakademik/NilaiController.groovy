package sistemakademik

import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN", "ROLE_USER"])
class NilaiController {

    def index() {
        def nilai = Nilai.list()
        [listNilai: nilai]
    }

    def create() {
        def mataKuliah = MataKuliah.list()
        [listMatkul: mataKuliah]
    }

    def save() {
        def nilai = new Nilai(params)
        if (nilai.validate()) {
            nilai.save flush:true, failOnError: true
            redirect action: "index"
        } else {
            flash.message = "Masukkan semua data dengan benar"
            redirect action: "create"
        }
    }

    def edit() {
        def nilai = Nilai.get(params.id)
        def mataKuliah = MataKuliah.list()
        [
                nilaiMhs: nilai,
                listMatkul: mataKuliah
        ]
    }

    def update() {
        def nilai = Nilai.get(params.id)
        nilai.properties = params
        nilai.save flush: true, failOnError: true
        redirect action: "index"
    }

    def delete() {
        def nilai = Nilai.get(params.id)
        nilai.delete()
        redirect action: "index"
    }
}
