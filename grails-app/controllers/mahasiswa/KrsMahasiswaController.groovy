package mahasiswa

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured
import sistemakademik.MataKuliah
import sistemakademik.mahasiswa.KrsMahasiswa

@Secured(["ROLE_USER"])
class KrsMahasiswaController {
    SpringSecurityService springSecurityService

    def index() {
        def listKrs = KrsMahasiswa.findAllByNama(springSecurityService.principal.username)
        [listKrs: listKrs]
    }

    def create() {
        def matkulSemester = MataKuliah.findAllBySemester(params.semester)
        def matkul = MataKuliah.list()
        if (matkulSemester.isEmpty()){
            [listMatkul:matkul]
        } else  {
            [listMatkul: matkulSemester]
        }
    }

    def save() {
        def username = springSecurityService.principal.username
        def listParams = params.list('mataKuliah')
        def krsMhs
        for (item in listParams){
            krsMhs = new KrsMahasiswa(
                    nama: username,
                    mataKuliah: MataKuliah.findById(item)
            )
            if (KrsMahasiswa.findByMataKuliah(krsMhs.mataKuliah)){
                flash.message = "Matakuliah telah ada";
                redirect action: "create", controller: "krsMahasiswa", params:[lang: params.lang]
                return
            }
            krsMhs.save flush: true, failOnError: true
        }

        redirect action: "index", controller: "krsMahasiswa", params:[lang: params.lang]
    }

    def edit() {
        def krsMahasiswa = KrsMahasiswa.findAllByNama(springSecurityService.principal.username)
        [krsMahasiswa: krsMahasiswa]
    }

    def delete(){
        def krs = KrsMahasiswa.get(params.id)
        krs.delete()
        redirect action: "edit", controller: "krsMahasiswa", params: [lang: params.lang]
    }
}
