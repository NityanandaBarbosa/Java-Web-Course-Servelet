<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="msg" class="class_4.Mensagem" />
<jsp:setProperty property="texto" name="msg" value="Mensagem exibida ao
usuário"/>
<jsp:getProperty property="texto" name="msg"/>
</body>
</html>