package sistemakademik

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured
import sistemakademik.auth.User

@Secured(["ROLE_ADMIN", "ROLE_USER"])
class DashboardController {
    SpringSecurityService springSecurityService

    def index() {
        def mhs = Mahasiswa.findByNama(springSecurityService.principal.username)
        def krsMahasiswa = Krs.findAllByMahasiswa(mhs).size()
        def khsMahasiswa = Nilai.findAllByMahasiswa(mhs).size()
        def jadwalMahasiswa = Jadwal.findAllByMahasiswa(mhs).size()
        def jurusanMahasiswa = Jurusan.list()

        def mahasiswa = Mahasiswa.count
        def dosen = Dosen.count
        def matkul = MataKuliah.count
        def ruangan = Ruangan.list().size()
        def jurusan = Jurusan.count
        def penasehat = PenasehatAkademik.count
        def jadwal = Jadwal.count
        def ta = TahunAkademik.count
        def nilai = Nilai.count
        def krs = Krs.count
        [
                jurusanMahasiswa: jurusanMahasiswa,
                mhs:mhs,
                krsMahasiswa: krsMahasiswa,
                khsMahasiswa: khsMahasiswa,
                jadwalMahasiswa: jadwalMahasiswa,
                mahasiswa: mahasiswa,
                dosen: dosen,
                matkul: matkul,
                ruangan: ruangan,
                jurusan: jurusan,
                penasehat: penasehat,
                jadwal: jadwal,
                ta: ta,
                nilai: nilai,
                krs: krs
        ]
    }

    def update() {
        def mahasiswa = Mahasiswa.get(params.id)
        mahasiswa.properties = params
        mahasiswa.save flush:true, failOnError: true
        redirect action: "index", controller:"dashboard"
    }
}
