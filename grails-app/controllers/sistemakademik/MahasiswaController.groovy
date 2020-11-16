package sistemakademik

import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN","ROLE_USER"])
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
        [mahasiswa: mahasiswa]
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
}
