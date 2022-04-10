<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Send Email</title>
</head>
<body>
	<div>
		<form id="formulario" name="formulario1" method="post" action="SendEmail">
			<p>Digite o destinatario :
				<input type="text" name="destinatario" id="destinatario" />
			</p>
			<p>Digite o assunto:
				<input type="text" name="assunto" id="assunto" />
			</p>
			<p>Digite a mensagem :
				<input type="text" name="corpo" id="mensagem" />
			</p>
			<p>
				<input type="submit" id="button" value="Enviar" />
			</p>
		</form>
	</div>
</body>
</html>