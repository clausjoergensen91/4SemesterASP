$(document).ready(function () {
    $("p").click(function () {
        $(this).hide();
    });
});

$(document).ready(function () {
    $(".clickme").click(function () {
        $("p").show();
    });
});