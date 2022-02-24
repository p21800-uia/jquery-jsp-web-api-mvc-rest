$(document).ready(function() {
    $.ajax({
        url: "http://localhost:8080/web_jsp_war/viewCotizaciones"
    }).then(function(data) {
        $('.greeting-id').append(data.id);
        $('.greeting-content').append(data.content);
    });
});