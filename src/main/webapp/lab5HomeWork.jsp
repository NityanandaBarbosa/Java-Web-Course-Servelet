<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<jsp:useBean id="email" class="class_4.Email" />
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form id="formulario" name="formulario1" method="get" action="">
			<p>Digite o destinatario :
				<input type="text" name="marca" id="destinatario" />
			</p>
			<p>Digite o assunto:
				<input type="text" name="modelo" id="assunto" />
			</p>
			<p>Digite a mensagem :
				<input type="text" name="ano" id="mensagem" />
			</p>
			<p>
				<input type="submit" name="button" id="button" value="Enviar" />
			</p>
		</form>
	</div>
</body>
</html>