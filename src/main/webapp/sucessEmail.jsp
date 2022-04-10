<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<jsp:useBean id="email" class="class_4.Email" />
<html>
<head>
<meta charset="ISO-8859-1">
<title>The email was sent</title>
</head>
<body>
<%
	String destinatario = request.getParameter("destinatario");
	String assunto = request.getParameter("assunto");
	String corpo = request.getParameter("corpo");
	out.println("<h2>" + "Email enviado com sucesso" + "</h2>");
	out.println("<h3>" + "Revise o seu email" + "</h3>");
%>
<div>
<h4>Enviado : </h4>
<p>
	<jsp:setProperty property="destinatario" name="email" value="<%= destinatario %>" />
	<jsp:getProperty property="destinatario" name="email"/>
</p>
<h4>Assunto : </h4>

<p>
	<jsp:setProperty property="assunto" name="email" value="<%= assunto %>"/>
	<jsp:getProperty property="assunto" name="email"/>
</p>
<h4>Mensagem : </h4>
<p>
	<jsp:setProperty property="corpo" name="email" value="<%= corpo %>"/>
	<jsp:getProperty property="corpo" name="email"/>
</p>
</div>

</body>
