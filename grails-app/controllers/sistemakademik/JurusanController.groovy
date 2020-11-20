package sistemakademik

import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN", "ROLE_USER"])
class JurusanController {

    def index() {
        def jurusan = Jurusan.list()
        [listJurusan: jurusan]
    }

    @Secured(["ROLE_ADMIN"])
    def create() {}

    def save() {
        def jurusan = new Jurusan(params)
        if (jurusan.validate()) {
            jurusan.save flush:true, failOnError: true
            redirect(controller: "jurusan", action: "index", params: [lang: params.lang])
        } else {
            flash.message = "${message(code: 'input.error')}"
            redirect(controller: "jurusan", action: "create", params: [lang: params.lang])
        }
    }

    @Secured(["ROLE_ADMIN"])
    def edit() {
        def jurusan = Jurusan.get(params.id)
        [jurusan: jurusan]
    }

    def update() {
        def jurusan = Jurusan.get(params.id)
        jurusan.properties = params
        jurusan.save flush:true, failOnError: true
        redirect(controller: "jurusan", action: "index", params: [lang: params.lang])
    }

    @Secured(["ROLE_ADMIN"])
    def delete() {
        def jurusan = Jurusan.get(params.id)
        jurusan.delete()
        redirect(controller: "jurusan", action: "index", params:[lang:params.lang])
    }

    def detail() {
        def jurusan = Jurusan.get(params.id)
        def mahasiswa = Mahasiswa.findAllByJurusan(jurusan)
        [mahasiswa: mahasiswa]
    }
}
