package sistemakademik

import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN", "ROLE_USER"])
class NilaiController {

    def index() {
        def nilai = Nilai.list()
        [listNilai: nilai]
    }

    @Secured(["ROLE_ADMIN"])
    def create() {
        def mataKuliah = MataKuliah.list()
        [listMatkul: mataKuliah]
    }

    def save() {
        def nilai = new Nilai(params)
        if (nilai.validate()) {
            nilai.save flush:true, failOnError: true
            redirect(action: "index", controller:"nilai", params: [lang: params.lang])
        } else {
            flash.message = "${message(code: 'input.error')}"
            redirect(action: "create", controller: "nilai", params:[lang: params.lang] )
        }
    }

    @Secured(["ROLE_ADMIN"])
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
        redirect(action: "index", controller: "nilai", params: [lang: params.lang])
    }

    @Secured(["ROLE_ADMIN"])
    def delete() {
        def nilai = Nilai.get(params.id)
        nilai.delete()
        redirect(action: "index", controller: "nilai", params: [lang: params.lang])
    }
}
