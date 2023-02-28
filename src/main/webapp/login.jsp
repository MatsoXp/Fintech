<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		
		<title>Fintech - Login</title>
		<%@ include file="header.jsp" %>
		<link rel="stylesheet" href="resources/css/login.css">
		
	</head>
	<body>
		<header>
			<img src="imagens/Logo.svg" alt="logo" class="logo">
		</header>
		<section class="box">
			<h1>Login</h1>
			<c:if test="${not empty erro}" >
				<div class="alert alert-danger">${erro}</div>
			</c:if>
			<form action="servletLogin" method="POST">
		        <fieldset>
		            <label>E-Mail</label>
		            <input type="text" name="email">

		            <label>Senha</label>
		            <input type="text" name="senha">
		            
		        </fieldset>
		            <input type="submit" value="Conectar" class="login">
		    </form>
		     <a href="cadastro.jsp">
		   		<button class="cadastro">Cadastre-se</button>
			 </a>
		 </section>
	</body>
</html>
