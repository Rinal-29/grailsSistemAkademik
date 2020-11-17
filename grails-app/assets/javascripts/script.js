$(document).ready( function () {
    $('#myTable').DataTable();
} );


$("#myTab a").on("click", function (){
    $(this).addClass("active");
})