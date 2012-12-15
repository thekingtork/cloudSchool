var colorAlmacenado = "azul";
$(document).on("ready", contructor);
	function contructor () {
		objeto_ajax = $("#contenedorMetro");
		actualizaReloj();
		call_ajax();
  }
  function call_ajax(){
    _scroll();//* Falta crear un variable JSON que contenga las vistas que tiene el scroll luego recorrerlas y verificar que (html.title) sea iguala las almacenadas en JSON
		$(".boxMPA").on("mouseover", animar)
		$(".boxMPA").on("mouseout", mostrar)
        $("a.ajax").click( function(e){
            e.preventDefault();
            $("#ContAjax").html("<img src=\"http://localhost/cloudschool/web/images/ajax-loader.gif\" title=\"Loader\">");
            var objeto = $(this).attr("href");
            console.log(objeto)
            $.ajax({
            	url: objeto,
            	type: 'get',
            		success: function (r) {    
                      objeto_ajax.append( "<div style='display:none' id='contHiden'>"+r+"</div>" );
                      obj = $("#contHiden").find("#ContAjax").html();
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
    var colorActual = dato.currentTarget.classList[4];
		switch(Identificador){
			case 'confSitema': 
        limpiarClases("#ContenedorNotf div",colorAlmacenado);
        agregaClases("#ContenedorNotf .tile",colorActual);
			break;
      case 'admPersonas':
        limpiarClases("#ContenedorNotf div",colorAlmacenado);
        agregaClases("#ContenedorNotf .tile",colorActual);
      break;
      case 'Estaditicas':
        limpiarClases("#ContenedorNotf div",colorAlmacenado);
        agregaClases("#ContenedorNotf .tile",colorActual);
      break;
      case 'planEstudios':
        limpiarClases("#ContenedorNotf div",colorAlmacenado);
        agregaClases("#ContenedorNotf .tile",colorActual);
      break;
      case 'perfil':
        limpiarClases("#ContenedorNotf div",colorAlmacenado);
        agregaClases("#ContenedorNotf .tile",colorActual);
      break;
      case 'tutoriales':
        limpiarClases("#ContenedorNotf div",colorAlmacenado);
        agregaClases("#ContenedorNotf .tile",colorActual);
      break;
      case 'aulaVirtual':
        limpiarClases("#ContenedorNotf div",colorAlmacenado);
        agregaClases("#ContenedorNotf .tile",colorActual);
      break;
      case 'organizador':
        limpiarClases("#ContenedorNotf div",colorAlmacenado);
        agregaClases("#ContenedorNotf .tile",colorActual);
      break;
      case 'obsevaciones':
        limpiarClases("#ContenedorNotf div",colorAlmacenado);
        agregaClases("#ContenedorNotf .tile",colorActual);
      break;
      case 'admacademica':
        limpiarClases("#ContenedorNotf div",colorAlmacenado);
        agregaClases("#ContenedorNotf .tile",colorActual);
      break;
			default: break;
		}	
	}
  function limpiarClases (selector,clase) {
    $(selector).removeClass(clase);
  }
  function agregaClases (selector,clase) {
      colorAlmacenado=clase;
    $(selector).addClass(clase);
  }
	function mostrar (dato) {
		var Identificador = dato.currentTarget.id;
		switch(Identificador){
			case 'confSitema': 
			break;
			default: break;
		}	
	}

  function _scroll () {
    $("#content_1").mCustomScrollbar({
        horizontalScroll:true,
        scrollButtons:{
          enable:false,
          scrollType:"continuous",
          scrollSpeed:20,
          scrollAmount:40
        },
        advanced:{
          autoExpandHorizontalScroll:true,
        },
    });
  }


