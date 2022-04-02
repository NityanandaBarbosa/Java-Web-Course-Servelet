<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form id="formulario" name="formulario1" method="post" action="AddItem">
		<p>Adicione um item :
			<input type="text" name="item" id="email" />
		</p>
		<p>
			<input type="submit" name="button" id="button" value="Adicionar" />
		</p>
	</form>
	<form id="formulario" name="formulario1" method="get" action="CheckCarrinho">
		Visualizar o carrinho :
		<p>
			<input type="submit" name="button" id="button" value="Carrinho" />
		</p>
	</form>
</body>
</html>