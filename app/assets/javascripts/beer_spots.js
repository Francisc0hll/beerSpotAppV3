$(document).on("ready turbolinks:load", function () {
   
    document.body.addEventListener('ajax:error', function (event) {
        var detail = event.detail;
        console.log('prueba')
        var data = detail[0], status = detail[1], xhr = detail[2];
    })



    $("#get_location").click(function (event) {

        event.preventDefault();
        
        $(this).html('<i class="fa fa-spinner fa-spin"> </i>')

        if (navigator.geolocation) {
            console.log('prueba')
            navigator.geolocation.getCurrentPosition(getAddress);
        } else {
            $('body').append("Geolocation is not supported by this browser.");
            
        }
        function getAddress(position) {
            var latitude = position.coords.latitude;
            var longitude = position.coords.longitude;
            $.ajax({
                url: '/locations/find_address',
                type: 'GET',
                dataType: 'json',
                data: { latitude: latitude, longitude: longitude }
            })
                .done(function (data) {
                    $('#bs_address').val(data.address);
                    console.log(data.address)
                })
                .always(function (data) {
                    $("#get_location").html('<i class="fa fa-map-marker"> </i>');
                })
        }

    });

});



















