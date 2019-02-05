$(document).ready(function() {
    $('#dataTables-masuk,#dataTables-kerja,#dataTables-selesai').DataTable({
            responsive: true
    });
    $(this).scrollTop(10);
    AOS.init();
    //AJAX untuk foto

    $('#data-order').hide();
    $('#kembali').hide();
    $('.btn-next').click(function(){
    	$('#data-pelanggan').hide("slow");
    	$('#data-order').show("slow");
    	$('#kembali').show();
    	$('#selanjutnya').hide();
    });
     $('.btn-kembali').click(function(){
    	$('#data-pelanggan').show("slow");
    	$('#data-order').hide("slow");
    	$('#selanjutnya').show();
        $('#kembali').hide();
    });
     $("#order-link,#order-button").click(function(){
     	$('html,body').animate({
     		scrollTop: $('#order-section').offset().top
     	},900);
     });
      $("#tracking-link").click(function(){
     	$('html,body').animate({
     		scrollTop: $('#tracking-section').offset().top
     	},900);
     });
       $("#service-link").click(function(){
     	$('html,body').animate({
     		scrollTop: $('#card-section').offset().top
     	},900);
     });
       $("#contact-link").click(function(){
     	$('html,body').animate({
     		scrollTop: $('#contact-section').offset().top
     	},3000);
     });

     $('.datepicker').datepicker({
 		todayHighlight: true,
 		autoclose: true
    });

     // Penghitungan Harga Di Form Order
     var hargajasa,berat,harga;
     $('#jenisjasa').click(function(){
     	hargajasa=$('#jenisjasa :selected').val();
     	berat = $('#berat').val();
     	harga = berat*hargajasa;
     	$('#harga').val(harga);
     });
     $('#berat').on('input',function(){
     	berat = $('#berat').val();
     	harga = berat*hargajasa;
     	$('#harga').val(harga);
     });

     //Untuk Save Invoice
     var doc = new jsPDF();
    var specialElementHandlers = {
        '#editor': function (element, renderer) {
            return true;
        }
    };

    $('#download-invoice').click(function () {
        doc.fromHTML($('#invoice').html(), 15, 15, {
            'width': 170,
                'elementHandlers': specialElementHandlers
        });
        doc.save('Invoice.pdf');
    });
    $('.modal').hide();
});

