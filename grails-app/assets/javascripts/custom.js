$(document).ready(function () {

    $('#form').validate({
        rules: {
            nim:  {
                minlength: 10,
                required: true
            },
            nama: {
                minlength: 2,
                required: true
            },
            noTelp: {
                minlength: 11,
                required: true
            },
            nip: {
                minlength: 5,
                required: true
            },
            username: {
                minlength: 5,
                required: true
            },
            email:{
                required: true,
                email: true
            },
            password: {
                minlength: 5,
                required: true
            }
        },errorPlacement(error, element){
            $(element).parents('.form-group').append(error);
        },
        highlight: function (element, errorClass, validClass) {
            $(element).addClass('is-invalid')
        },
        unhighlight: function (element, errorClass, validClass) {
            $(element).removeClass('is-invalid').addClass('is-valid')
        },
        messages: {
            username: {
                required: "Enter a valid username"
            }
        }
    });
});
