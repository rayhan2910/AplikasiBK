$(document).ready(function() {
    $('#cari').click(function() {
        var sek = $('#sekolah').val();
        alert(sek);
        $.ajax({
            type: 'get',
            dataType: 'html',
            url: '{{url(' / admin / kelassiswas / search ')}}',
            data: 'id=' + sek,
            success: function(response) {
                console.log(response);
                $('#dataTable').html(response);
            }
        });
    });
});