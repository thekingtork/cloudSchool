$(document).on("ready", iniciar);
	function iniciar () {
		$(".boxMPA").on("mouseover", animar)
		$(".boxMPA").on("mouseout", mostrar)
	}

	function animar (dato) {
		var Identificador = dato.currentTarget.id;
		ocultar={
			margin: "120% 0 0 0"
		}
		switch(Identificador){
			case 'confSitema': 
				$("#confSitema p").css(ocultar);
			break;
			default: break;
		}	
	}
	function mostrar (dato) {
		var Identificador = dato.currentTarget.id;
		mostrar={
			margin: "70% 0 0 0"
		}
		switch(Identificador){
			case 'confSitema': 
				$("#confSitema p").css(mostrar);
			break;
			default: break;
		}	
	}