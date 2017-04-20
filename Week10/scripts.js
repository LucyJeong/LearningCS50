$(document).ready(function() {

    $('#quote').submit(function() {

        var url = '/quote?symbol=' + $('#symbol').val();
        $.getJSON(url, function(data) {
            alert(data.price);
        });
        return false;

    });

});
