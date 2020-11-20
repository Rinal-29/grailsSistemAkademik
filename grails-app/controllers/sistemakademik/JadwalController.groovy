package sistemakademik

import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN", "ROLE_USER"])
class JadwalController {

    def index() {
        def jadwal = Jadwal.list()
        [listJadwal: jadwal]
    }

    @Secured(["ROLE_ADMIN"])
    def create() {
        def dosen = Dosen.list()
        def matkul = MataKuliah.list()
        def tahunAkademik = TahunAkademik.list()
        def ruangan = Ruangan.list()
        [
                dosen: dosen,
                matkul: matkul,
                tahunAkademik: tahunAkademik,
                ruangan: ruangan
        ]
    }

    def save() {
        def jadwal = new Jadwal(params)
        if (jadwal.validate()) {
            jadwal.save flush: true, failOnError: true
            redirect(controller: "jadwal", action: "index", params: [lang: params.lang])
        } else {
            flash.message = "${message(code: 'input.error')}"
            redirect(controller: "jadwal", action: "create", params: [lang: params.lang])
        }
    }

    @Secured(["ROLE_ADMIN"])
    def edit() {
        def jadwal = Jadwal.get(params.id)
        def dosen = Dosen.list()
        def matkul = MataKuliah.list()
        def tahunAkademik = TahunAkademik.list()
        def ruangan = Ruangan.list()
        [
                jadwal: jadwal,
                dosen: dosen,
                matkul: matkul,
                tahunAkademik: tahunAkademik,
                ruangan: ruangan
        ]
    }

    def update() {
        def jadwal = Jadwal.get(params.id)
        jadwal.properties = params
        jadwal.save flush:true, failOnError: true
        redirect(controller: "jadwal", action: "index", params: [lang: params.lang])
    }

    @Secured(["ROLE_ADMIN"])
    def delete() {
        def jadwal = Jadwal.get(params.id)
        jadwal.delete()
        redirect(controller: "jadwal", action: "index", params: [lang: params.lang])
    }
}
