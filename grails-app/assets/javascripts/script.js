$(document).ready( function () {
    $('#myTable').DataTable({
        ordering: false
    });

    $("#myTab li a").on("click", function (){
        $(this).addClass("active");
    });


    numberTable();
    addMatkulChecked();
    editMatkulChecked();
    selectedPage();
    totalKrsPage();

    function selectedPage(){
        $('.semester-select').change(function (){
            console.log(this.value);
        });
    }

    function addMatkulChecked(){
        let matkul = $('input[type=checkbox]');
        matkul.change(function (){
            let matkulChecked = matkul.filter(':checked');
            $('.matkulNum').text(matkulChecked.length);
        })

        $("input[type=checkbox]").on("click", function (){
            let total = 0;
            $('input[type=checkbox]:checked').each(function () {
                let sksMatkul = parseInt(this.getAttribute("data-sks"));
                total += sksMatkul;
            })

            if (total > 24){
                $('.sksError').show().text("Jumlah SKS Tidak Boleh melebihi 24 sks");
            } else {
                $('.sksError').hide();
            }

            $('.sksNum').text(total);
        })
    }

    function numberTable() {
        let lengthTable = $('#myTable tbody tr' ).length;
        let lengthTableKrs = $('#tableKrs tbody tr').length;
        if (lengthTable > 1 || lengthTableKrs){
            $('#myTable tbody tr').each(function (index) {
                $(this).children("td:eq(0)").html(index + 1);
            });

            $('#tableKrs tbody tr').each(function (index) {
                $(this).children("td:eq(0)").html(index + 1);
            });
        }
    }

    function editMatkulChecked(){
        let matkulChecked = $('input[name=mataKuliah]:checked');
        let total = 0;
        $('.matkulNum').text(matkulChecked.length);
        matkulChecked.each(function () {
            let sksMatkul = parseInt(this.getAttribute("data-sks"));
            total += sksMatkul;
        });
        $('.sksNum').text(total);
    }

    function totalKrsPage(){
        let total = 0;
        $('.krsValue').each(function (){
            let sks = parseInt($(this).text());
            total += sks
        })
        let lengthMatkul = $('#tableKrs tbody tr' ).length;
        $('.krsSksNum').text(total);
        $('.matkulSksNum').text(lengthMatkul);
    }
} );


// matkul.click(function (){
//     let total = 0;
//     if ($(this).is(":checked")){
//         console.log("checkbox checked");
//         $(this).each(function (){
//             let sks = parseInt(this.getAttribute('data-sks'));
//             total += sks
//             console.log(total)
//         })
//
//     }else if($(this).prop("checked") === false){
//         console.log("Checkbox is unchecked.");
//     }
// });


