$(document).ready(function () {

    ////////////////////////ADD////////////////////////       
//    $("#add").click(function () {
//        $.ajax({
//            url: "add.jsp",
//            type: "post",
//            data: {
//                roll: $('#roll').val(),
//                name: $('#name').val(),
//                deptt: $('#deptt option:selected').val(),
//                date: $('#date').val(),
//                success: function (data) {
//
//                    var values = $.trim(data); //triming value if there is any whitespaces
////                                alert(values);
//                    if (values == "true") {
//                        alert("Done inserted"); //show alert
//                    } else {
//                        alert("Sorry not inserted");
//                    }
//                }
//            }
//        });
//    });

    $("#myInput").on("keyup", function () {
        var value = $(this).val().toLowerCase();
        $("#myTable tr").filter(function () {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
        });
    });

    $('[data-toggle="tooltip"]').tooltip();

});