$(document).ready( function () {
    $('#myTable').DataTable();
} );


$("#myTab a").on("click", function (){
    e.preventDefault()
    $(this).addClass("active");
})