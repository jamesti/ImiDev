jQuery(document).ready( function($) {

//Modals!!

	var showmodalJames = $('#showmodaljames'),
		modaljames = $('#modaljames'),
		showmodalsamuel = $('#showmodalsamuel'),
		modalsamuel = $('#modalsamuel'),
		showmodalwilker = $('#showmodalwilker'),
		modalwilker = $('#modalwilker'),
		showmodalalan = $('#showmodalalan'),
		modalalan = $('#modalalan'),
		showmodalbosco = $('#showmodalbosco'),
		modalbosco = $('#modalbosco');

	showmodalJames.click(function(event) {
		event.preventDefault();
		modaljames.modal('toggle');
	});

	showmodalsamuel.click(function(event) {
		event.preventDefault();
		modalsamuel.modal('toggle');
	});

	showmodalwilker.click(function(event) {
		event.preventDefault();
		modalwilker.modal('toggle');
	});

	showmodalalan.click(function(event) {
		event.preventDefault();
		modalalan.modal('toggle');
	});

	showmodalbosco.click(function(event) {
		event.preventDefault();
		modalbosco.modal('toggle');
	});

//Acaba Modals!!

//Back to Top

	var backtop = $('#backtop');

	backtop.click(function(){
        $("html, body").animate({ scrollTop: 0 }, 600);
            return false;
    });


//Provacidade
	
	var privacidade = $('#privacidade'),
		showPrivacidade = $('#modalprivacidade');

	privacidade.click(function(event) {
		event.preventDefault();
		showPrivacidade.modal('toggle');
	});

//Termos
	
	var termos = $('#termos'),
		showTermos = $('#modaltermos');

	termos.click(function(event) {
		event.preventDefault();
		showTermos.modal('toggle');
	});

//Contato

	var nome = $('#txtnome'),
		email = $('#txtemail'),
		setor = $('#sltsetor'),
		mensagem = $('#txtmensagem'),
		btnEnviar = $('#btnenviar'),
		progress = $('.bar'),
		modalContato = $('#modalcontato');

	btnEnviar.click(function(event) {

		event.preventDefault();

		if (setor.val() === '' || mensagem.val() === '' || nome.val() === '' || email.val() === '') {
			
			$(".alert-error").show('slow').delay(2000).slideUp('slow');

		} else {

			modalContato.modal('show');

			progress.progressbar();

			var dados = $('#formcontato').serialize();

			$.ajax({
				url: 'app/email.asp',
				type: 'post',
				dataType: 'html',
				data: dados,
			})
			.done(function() {
				progress.attr('aria-valuetransitiongoal', '100');
				progress.progressbar();
				$(".alert-success").delay(1500).show('slow');

				setTimeout(function(){
					window.location.replace('?')
				},5000);
			})
			.fail(function() {
				$("#fail").show('slow').delay(2000).slideUp('fast');

				setTimeout(function(){
					modalContato.modal('hide')
				},3000);

				email.focus();
			});
			
		};

	});

});