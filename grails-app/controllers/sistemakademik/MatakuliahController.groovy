package sistemakademik

import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN", "ROLE_USER"])
class MatakuliahController {

    def index() {
        def matkul = MataKuliah.list()
        [listmatkul:matkul]
    }

    @Secured(["ROLE_ADMIN"])
    def create() {}

    def save() {
        def matkul = new MataKuliah(params)
        if (matkul.validate()) {
            matkul.save flush: true, failOnError: true
            redirect(controller: "matakuliah", action: "index", params: [lang: params.lang])
        } else {
            flash.message = "${message(code: 'input.error')}"
            redirect(controller: "matakuliah", action: "create", params: [lang: params.lang])
        }
    }

    @Secured(["ROLE_ADMIN"])
    def edit() {
        def matkul = MataKuliah.get(params.id)
        [matkul:matkul]
    }

    def update() {
        def matkul = MataKuliah.get(params.id)
        matkul.properties = params
        matkul.save flush:true, failOnError:true
        redirect(controller: "matakuliah", action: "index", params: [lang: params.lang])
    }

    @Secured(["ROLE_ADMIN"])
    def delete() {
        def matkul = MataKuliah.get(params.id)
        matkul.delete()
        redirect(controller: "matakuliah", action: "index", params: [lang: params.lang])
    }
}
