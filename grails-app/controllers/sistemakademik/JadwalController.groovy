package sistemakademik

class JadwalController {

    def index() {
        def jadwal = Jadwal.list()
        [listJadwal: jadwal]
    }

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
        jadwal.save flush: true, failOnError: true
        redirect action: "index"
    }

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
        redirect action: "index"
    }

    def delete() {
        def jadwal = Jadwal.get(params.id)
        jadwal.delete()
        redirect action: "index"
    }
}
