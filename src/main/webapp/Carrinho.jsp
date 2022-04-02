<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>
<%@page import="class_2.Carro"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Buy Car</title>
</head>
	<body>
	<h1> Seu carrinho : </h1>
		<%
	  	if ( session == null ) { 
  			out.println("Seu carrinho de compras está vazio");
		 }  else {
			 ArrayList al = new ArrayList();
			 ArrayList<String> carrinho = (ArrayList<String>) session.getAttribute("carrinho");
			 
			 if (carrinho != null && carrinho.size() > 0) {
				 for(int i = 0; i < carrinho.size(); i++){
					 out.println("<form id='formulario' name='formulario' method='post' action="+"CarrinhoClean?delete="+i+">" +
						 "<li>" + carrinho.get(i) + "<p> <input type='submit', value='Deletar'" + "</li></p>" + 
					 "</form>");
			} 
			 out.println("<form id='formulario' name='formulario' method='get' action="+"CarrinhoClean>" +
					 "<h3>" + "Apagar todos" + "<p> <input type='submit', value='Deletar'" + "</h3></p>" + 
				 "</form>");
		   }else {
			   out.println("<h2>" + "O carrinho está vazio!" + "</h2>");
		   }
		}
		out.println("<form id='formulario' name='formulario' method='get' action="+"AddItem>" +
				 "<h3>" + "Adicionar novos itens" + "<p> <input type='submit', value='Adicionar'" + "</p></h3>" + 
			 "</form>");
		%>
	</body>
</html>