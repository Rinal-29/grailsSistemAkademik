package sistemakademik

import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN", "ROLE_USER"])
class PenasehatAkademikController {

    def index() {
        def penasehat = PenasehatAkademik.list()
        [penasehat: penasehat]
    }

    def create() {
        def mahasiswa = Mahasiswa.list()
        def dosen = Dosen.list()
        def tahunAkademik = TahunAkademik.list()
        [
                mahasiswa:mahasiswa,
                dosen:dosen,
                tahunAkademik: tahunAkademik
        ]
    }

    def save () {
        def penasehat = new PenasehatAkademik(params)
        penasehat.save flush: true, failOnErorr: true
        redirect action: "index"
    }

    def edit() {
        def penasehat = PenasehatAkademik.get(params.id)
        def mahasiswa = Mahasiswa.list()
        def dosen = Dosen.list()
        def tahunAkademik = TahunAkademik.list()
        [
                penasehat: penasehat,
                mahasiswa:mahasiswa,
                dosen:dosen,
                tahunAkademik: tahunAkademik
        ]
    }

    def update() {
        def penasehat = PenasehatAkademik.get(params.id)
        penasehat.properties = params
        penasehat.save flush: true, failOnError:true
        redirect action: "index"
    }

    def delete() {
        def penasehat = PenasehatAkademik.get(params.id)
        penasehat.delete()
    }
}
