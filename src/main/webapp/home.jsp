<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
	<head>
	    <meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <%@ include file="header.jsp" %>
	    <link rel="stylesheet" href="resources/css/home.css">
	    
	    <title>Fintech - Bem-vindo!</title>
    </head>
    

    <body>
        <header>
			<img src="imagens/Logo.svg" alt="logo" class="logo">
			<section class="cabecalho">
            <h1>FINTECH</h1>
            <h2>Organização e investimento</h2>
        </section>
		</header>
		<main>
	        <section>
	        	<a href="login.jsp">
	            <button class="form-control" id="entrar">Entrar</button></a>
	            <a href="cadastro.jsp">
	            <button class="form-control" id="novo_usuario">Cadastrar</button></a>
	        </section>
        </main>
    </body>
</html>
