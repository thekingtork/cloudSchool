var colorAlmacenado = "azul";
$(document).on("ready", contructor);
	function contructor () {
		objeto_ajax = $("#contenedorMetro");
		actualizaReloj();
		call_ajax();
    ajax_ajustesEvaluacion();
        validarPos ();  
        _scroll()                  
  }
  function call_ajax(){
        $("a.ajax").click( function(e){
            e.preventDefault();
            $("#ContAjax").html("<img src=\"http://localhost/cloudschool/web/images/ajax-loader.gif\" title=\"Loader\" id=\"loader_ajax\">");
            var objeto = $(this).attr("href");
            //console.log(objeto)
            $.ajax({
              async : true,
            	url: objeto,
            	type: 'get',
            		success: function (r) {    
                      $("#ContAjax").html(r);
                      call_ajax();                      
                      window.history.pushState(null, "CloudSchool", objeto);
                      // $.getScript(objeto, function() {                    });
                         ajax_ajustesEvaluacion();
                          validarPos();  
                          $('#scripts').html('<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script><script src="/cloudschool/web/javascripts/jquery.mCustomScrollbar.js"></script></script><script src="/cloudschool/web/javascripts/jquery.mousewheel.min.js"></script>')                          
                          console.log("success")
                    },
                complete: function(){
                          _scroll()  
                          console.log('complete')
                }
                });
            });

        }
    function limpiaForm(miForm) {
          $(':input', miForm).each(function() {
          var type = this.type;
          var tag = this.tagName.toLowerCase();
          if (type == 'text' || type == 'password' || tag == 'textarea')
          this.value = '';
          else if (type == 'checkbox' || type == 'radio')
          this.checked = false;
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
  function validarPos () {
    contenedor = $('#ContAjax').children('#CsuperiorIzq');
      if (contenedor.length == 1) {
        $(".boxMPA").on("mouseover", animar)
      }
      else{
        var color = $('#ContAjax').children('#bloqueCgenerales').attr('class');
        var colortmp = $('#ContAjax').children('#bloqueCgenerales').data("color");
        console.log(colortmp);
       if (color) {
          if (color == "blanco") {
            limpiarClases("#ContenedorNotf div",colorAlmacenado);
            agregaClases("#ContenedorNotf .tile",colortmp);
          }
          else{
            limpiarClases("#ContenedorNotf div",colorAlmacenado);
            agregaClases("#ContenedorNotf .tile",color);
          }
       }
       else{
          limpiarClases("#ContenedorNotf div",colorAlmacenado);
          agregaClases("#ContenedorNotf .tile",colortmp);
       };
      };
  }
  function limpiarClases (selector,clase) {
    $(selector).removeClass(clase);
  }
  function agregaClases (selector,clase) {
      colorAlmacenado = clase;
    $(selector).addClass(clase);
  }

  function _scroll () {
    if( $("#content_1").length )
    {

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
  }
function ajax_ajustesEvaluacion(){
              if( $('#brang').length )
              {
                console.log("ajax_ajustesEvaluacion")
                $('form#brang').submit(function(e){
                    e.preventDefault();
                    console.log("click")
                    $('form').each( function(index){
                        var datos=$(this).serialize();
                        console.log(index+"  "+$(this).attr('action'));
                         $.ajax({
                            url:$(this).attr('action'),
                            type:'POST',
                            data:datos,
                            success:function(){
                              console.log(index + "Eniviado")
                            },
                            error:function(e){
                                console.log("Error"+ e)
                                //alert("Error"+ e)
                            }
                        })
                        
                    })
                })
              }               
}