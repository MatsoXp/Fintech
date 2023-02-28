<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Atualização de Movimentacao</title>
	<%@ include file="header.jsp" %>
	<link rel="stylesheet" href="resources/css/edicao-movimentacao.css">
</head>


<body>
	<header>
		<img src="imagens/User.svg" alt="Usuário" class="usuario">
		<nav>
			<img src="imagens/Tres_tracos.svg" class="menu">
		</nav>
	</header>


<div class="container box">
	<h2>Editar</h2>
	<c:if test="${not empty msg }">
		<div class="alert alert-success">${msg}</div>
	</c:if>
	<c:if test="${not empty erro }">
		<div class="alert alert-danger">${erro}</div>
	</c:if>
	
	<form action="movimentacao" method="post">
		<input type="hidden" value="editar" name="acao">
		<input type="hidden" value="${movimentacao.id}" name="id">
		
		<div>
			<label for="id-categoria">Categoria</label>
			<select class="form-select" name="categoria" id="id-categoria" name="categoria" value="${movimentacao.categoria}" >
				<option>receita</option>
			    <option>despesa</option>
			</select>
		</div>
		
		
		<%--EDICAO DE CATEGORIA POR TEXT AREA/STRING, NÃO DELETAR
		<div class="form-group">
			<label for="id-categoria">Categoria</label>
			<input type="text" name="categoria" id="id-subcategoria" class="form-control" value="${movimentacao.categoria}" >
		</div>
		 --%>
			
		
		<div class="form-group">
			<label for="id-subcategoria">Sub Categoria</label>
			<input type="text" name="subcategoria" id="id-valor" class="form-control" value="${movimentacao.subCategoria}">
		</div>
		<div class="form-group">
			<label for="id-descricao">Descrição</label>
			<input type="text" name="descricao" id="id-descricao" class="form-control" value="${movimentacao.descricao}">
		</div>
		<div class="form-group">
			<label for="id-datamovimentacao">Data</label>
			<input type="text" name="data" id="id-datamovimentacao" class="form-control" 
				value='<fmt:formatDate value="${movimentacao.data.time }" pattern="dd/MM/yyyy"/>'>
		</div>
		<div class="form-group">
			<label for="id-valor">Valor</label>
			<input type="text" name="valor" id="id-valor" class="form-control" value="${movimentacao.valor}">
		</div>
		<input type="submit" value="Salvar" class="btn btn-primary">
		<a href="movimentacao?acao=listar" class="btn btn-danger">Cancelar</a>
	</form>
</div>

		<footer class="fixed-bottom">
			<section class="box_rodape">
				<a href="painel_de_controle.jsp">
					<img src="imagens/Inicio.svg">
				</a>		
				<img src="imagens/Carteira.svg">
				
				<a href="cadastro-movimentacao.jsp">
				<img src="imagens/Adicionar_2.svg">
				</a>
				
				<img src="imagens/Grafico.svg">
				<img src="imagens/Configuracoes.svg">
			</section>
	    </footer>


<%@ include file="footer.jsp" %>



</body>
</html>