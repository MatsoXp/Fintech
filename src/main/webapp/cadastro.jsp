<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="pt-BR">
	
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title >Fintech - Cadastre-se</title>
        <%@ include file="header.jsp" %>
        <link rel="stylesheet" href="resources/css/style_cadastro.css">
    </head>

    <body>

        <header>
			<img src="imagens/Logo.svg" alt="logo" class="logo">
		</header>

        <main>
            <div class="box">

                <h1 class="text-dark">Cadastre-se</h1>
                
                <c:if test="${not empty erro}" >
                    <div class="alert alert-danger">${erro}</div>
                </c:if>
            
                <form action="servletCadastro" method="POST">
                    <fieldset>
                        <label>Nome</label>
                        <input type="text" name="nome" maxlength="50" placeholder="Digite seu nome" autocomplete="on" required class="nome form-control">
                        <label>Email</label>
                        <input type="text" name="email" maxlength="50" placeholder="Digite seu e-mail" autocomplete="on" required class="email form-control">
                        <label>Senha</label>
                        <input type="text" name="senha" minlength="5" maxlength="15" placeholder="Digite a senha" required class="senha form-control">
                        <label>Confirmar senha</label>
                        <input type="text" name="confirmarSenha" minlength="5" maxlength="15" placeholder="Digite a senha" required class="confirmar_senha form-control">
                    </fieldset>
                        <input type="submit" value="Criar conta" class="criar_conta">
                </form>
            </div>
        </main>

    </body>

</html>