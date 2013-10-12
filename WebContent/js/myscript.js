$(function() {
		
		$( "#accordion" ).accordion();
		
$(function() {
$( "#Professtion" ).menu();
$("#Professtion1").menu();
$("#menu").menu();
});
$("#checkbox").button();
		
		var availableTags = [
			"ActionScript",
			"AppleScript",
			"Asp",
			"BASIC",
			"C",
			"C++",
			"Clojure",
			"COBOL",
			"ColdFusion",
			"Erlang",
			"Fortran",
			"Groovy",
			"Haskell",
			"Java",
			"JavaScript",
			"Lisp",
			"Perl",
			"PHP",
			"Python",
			"Ruby",
			"Scala",
			"Scheme"
		];
		$( "#autocomplete" ).autocomplete({
			source: availableTags
		});
		

		
		$( "#button" ).button();
		$( "#button1").button();
		$("#button2").button();
		$( "#radioset" ).buttonset();
		

		
		$( "#tabs" ).tabs();
		

		
		$( "#dialog" ).dialog({
			autoOpen: false,
			
			buttons: [
				{
					text: "Ok",
					click: function() {
						$( this ).dialog( "close" );
					}
				},
				{
					text: "Cancel",
					click: function() {
						$( this ).dialog( "close" );
					}
				}
			]
		});

		// Link to open the dialog
		$( "#dialog-link" ).click(function( event ) {
			$( "#dialog" ).dialog( "open" );
			event.preventDefault();
		});
		

		
		$( "#datepicker" ).datepicker({
			inline: true
		});
		

		
		$( "#slider" ).slider({
			range: true,
			values: [ 17, 67 ]
		});
		

		
		$( "#progressbar" ).progressbar({
			value: 20
		});
		

		// Hover states on the static widgets
		$( "#dialog-link, #icons li" ).hover(
			function() {
				$( this ).addClass( "ui-state-hover" );
			},
			function() {
				$( this ).removeClass( "ui-state-hover" );
			}
		);
	});// JavaScript Document
	$(function() {
		$( "#datepicke" ).datepicker({
			changeMonth: true,
			changeYear: true
		});
	});
	$(function() {
		$( "#button2" ).click(function() {
			$( "#dialog-confirm" ).dialog( "open" );
			return false;
		});
		$( "#dialog-confirm" ).dialog({
			resizable: false,
			autoOpen: false,
			height:140,
			modal:true,
			buttons: {
				"Confirm": function() {
					$( this ).dialog( "close" );
				},
				Cancel: function() {
					$( this ).dialog( "close" );
				}
			}
		});
		
	});
	$.fx.speeds._default = 1000;
	$(function() {
		$( ".dialog" ).dialog({
			autoOpen: false,
			modal: true
					});

		$( "#opener" ).click(function() {
			$( "#dialog" ).dialog( "open" );
			return false;
		});
	}); $(function() {
$( "#menu" ).menu();
});


function createAjaxObject()	{

 var xmlhttp;
 try	{
	 xmlhttp= new XMLHttpRequest();
 }
 catch(e) 	{}
 try { xmlhttp=new ActiveXObject("Msxml2.XMLHTTP.6.0"); } catch (e) {}
try { xmlhttp=new ActiveXObject("Msxml2.XMLHTTP.3.0"); } catch (e) {}
try { xmlhttp=new ActiveXObject("Msxml2.XMLHTTP"); } catch (e) {}
try { xmlhttp=new ActiveXObject("Microsoft.XMLHTTP"); } catch (e) {}

	return xmlhttp;
	
}



function incr(para) {
	
	var init=parseInt(document.getElementById(para).innerHTML);
	document.getElementById(para).innerHTML= init+1;
	
}
