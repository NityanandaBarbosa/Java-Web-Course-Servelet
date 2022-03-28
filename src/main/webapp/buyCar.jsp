<%@page import="class_2.Carro"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Buy Car</title>
</head>
	<body>
		<div>
			<form id="formulario" name="formulario1" method="post" action="CarrosComprar">
				<p>Digite a marca :
					<input type="text" name="marca" id="email" />
				</p>
				<p>Digite o modelo:
					<input type="text" name="modelo" id="password" />
				</p>
				<p>Digite o ano:
					<input type="text" name="ano" id="password" />
				</p>
				<p>
					<input type="submit" name="button" id="button" value="Buscar" />
				</p>
			</form>
		</div>
		<div>
			<%!
			boolean checkNullOrEmpty(String phrase){
				if(phrase == null || phrase == ""){
					return true;
				}else{
					return false;	
				}	
			}
			%>
			<%
			String marca = (String)request.getAttribute("marca");
			String modelo = (String)request.getAttribute("modelo");
			String ano = (String)request.getAttribute("ano");
			
			
			if((!checkNullOrEmpty(marca)|| !checkNullOrEmpty(modelo) || !checkNullOrEmpty(ano))){
				out.println("<h2>Resultado : <h2>");
			}
			
			if(!checkNullOrEmpty(marca)){
				//String msgStr = (String)marca;
				out.println("<h3> Marca : " + marca + "</h3>");
			}
			if(!checkNullOrEmpty(modelo)){
				//String msgStr = (String)modelo;
				out.println("<h3> Modelo : " + modelo + "</h3>");
			}
			if(!checkNullOrEmpty(ano)){
				//String msgStr = (String)ano;
				out.println("<h3> Modelo : " + ano + "</h3>");
			}
			%>
		</div>
	</body>
</html>