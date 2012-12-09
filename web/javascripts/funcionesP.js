$(document).on("ready", contructor);
	function contructor () {
		objeto_ajax = $("#contMetro");
		actualizaReloj();
		call_ajax();
		$(".boxMPA").on("mouseover", animar)
		$(".boxMPA").on("mouseout", mostrar)
	}
	function call_ajax(){
        $("a.ajax").click( function(e){
            e.preventDefault();
            $("#ContAjax").html('<img src="{{ asset(\'images/ajax-loader.gif\') }}" title=\'Loader\'>');
            var objeto = $(this).attr("href");
            console.log(objeto)
            $.ajax({
            	url: objeto,
            	type: 'get',
            		success: function (r) {    
                      objeto_ajax.append( "<div style='display:none' id='contHiden'>"+r+"</div>" );
                      var obj = $("#contHiden").find("#ContAjax").html();
                      var _title =  $("#contHiden").find("title").html();
                      $("#contHiden").remove();
                      $("#ContAjax").html(obj);
                      $("title").html(_title);
                      console.log(_title)
                      window.history.pushState(null, _title, objeto);
                      call_ajax();                      
                    } 
                });
            });
        }
    function limpiaForm(miForm) {
          // recorremos todos los campos que tiene el formulario
          $(':input', miForm).each(function() {
          var type = this.type;
          var tag = this.tagName.toLowerCase();
          //limpiamos los valores de los campos…
          if (type == 'text' || type == 'password' || tag == 'textarea')
          this.value = '';
          // excepto de los checkboxes y radios, le quitamos el checked
          // pero su valor no debe ser cambiado
          else if (type == 'checkbox' || type == 'radio')
          this.checked = false;
          // los selects le ponesmos el indice a -
          else if (tag == 'select')
          this.selectedIndex = -1;
  	});
        }
    function actualizaReloj(){ 
          marcacion = new Date();
          Hora = marcacion.getHours() 
          Minutos = marcacion.getMinutes() 
          Segundos = marcacion.getSeconds() 
            if (Hora<=9)
              Hora = "0" + Hora;
            if (Minutos<=9)
              Minutos = "0" + Minutos
            if (Segundos<=9)
              Segundos = "0" + Segundos 
        var Dia = new Array("Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo");
        var Mes = new Array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Sept.","Oct.","Nov.","Dic.");
        var Hoy = new Date();
        var Anio = Hoy.getFullYear();
        var Fecha = Dia[Hoy.getDay()] + " " + Hoy.getDate() + " de " + Mes[Hoy.getMonth()];
        var Inicio, Script, Final, Total
        	if(Hora > 12 ){
        		TM = "PM";
        		Hora = Hora - 12;
        	}
        	else{
        		TM = "AM";
        	}
		Script =  Hora + ":" + Minutos + " " + TM;
		Total = Script
		$("#Fecha label span").html(Total);
		$("#Fecha label p").html(Fecha);
		setTimeout("actualizaReloj()",30000)
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
