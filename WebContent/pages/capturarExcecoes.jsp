<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script> -->
<title>Insert title here</title>
</head>
<body>
	<h3>Capturando exce��es com jquery</h3>
	<input type="text" value="valor informado" id="txtvalor">
	<input type="button" onclick="testarExcecao();" value="Testar Exce��o">
	
	<script type="text/javascript" src="../resources/js/jquery-3.5.1.min.js"></script>
</body>
<script type="text/javascript">
	 function testarExcecao(){
		 
		 alert($('#txtvalor').val());
		 
		 valorInformado =  $('#txtvalor').val();
		 
		 $.ajax({
			  method: "POST",
			  url: "capturarExcecao", // para qual servlet?
			  data: { valorParam: valorInformado }
			})
			.done(function(response) {// resposta ok - nenhum erro
			    alert("Sucesso: " + response);
			
			   // fazer algo
		   })
		   .fail(function(xhr, status, errorThrown) { // resposta erro - algum problema ocorreu
			   alert("Error: " + xhr.responseText); // mostra resposta do servidor
		   	    // fazer algo se der errado;
		   });
		 
	 }
</script>
</html>