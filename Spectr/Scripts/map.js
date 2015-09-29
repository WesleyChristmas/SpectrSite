function Ini() {
        var myOptions = {
            center: new google.maps.LatLng(60, 90),
            mapTypeId: google.maps.MapTypeId.HYBRID,
            mapTypeControl: false,
            panControl: false,
            panControlOptions: {
                position: google.maps.ControlPosition.LEFT_TOP
            },
            scrollwheel: false,
            streetViewControl: false,
            zoom: 3,
            zoomControl: true,
            zoomControlOptions: {
                style: google.maps.ZoomControlStyle.SMALL,
                position: google.maps.ControlPosition.LEFT_CENTER
            }
        }

        map = new google.maps.Map(document.getElementById('map'), myOptions);

    }
    google.maps.event.addDomListener(window, 'load', Ini);