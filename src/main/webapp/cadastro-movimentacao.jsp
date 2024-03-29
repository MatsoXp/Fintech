<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-BR">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <%@ include file="header.jsp" %>
	    		<link rel="stylesheet" href="resources/css/cadastro-movimentacao.css">
	    
	    <title>Movimentações</title>
		
	</head>

	<body>
		<header>
			<img src="imagens/User.svg" alt="usuario" class="usuario">
			<nav>
				<img src="imagens/Tres_tracos.svg" class="menu">
			</nav>
		</header>
		<main>
			<div class="container box">
				<h2>Movimentações</h2>

				<c:if test="${not empty msg }">
					<div class="alert alert-success">${msg}</div>
				</c:if>
				
				<form action="movimentacao" method="post">
					<input type="hidden" value="cadastrar" name="acao">
				
					<div>
						<label for="id-categoria">Categoria</label>
						<select class="form-select categoria" id="id-categoria" name="categoria">
							<option>receita</option>
							<option>despesa</option>
						</select>
					</div>
				
					<%-- SELECAO DE CATEGORIA POR STRING - NAO USAR, MAS MANTER
					<div class="form-group">
						<label for="id-categoria">Categoria</label>
						<input type="text" name="categoria" id="id-categoria" class="form-control nome" placeholder="Digite a categoria" required>
					</div> 
					--%>
				
					<div class="form-group">
						<label for="id-subcategoria">Subcategoria</label>
						<input type="text" name="subcategoria" id="id-subcategoria" class="form-control" placeholder="Digite a subcategoria">
					</div>
					<div class="form-group">
						<label for="id-descricao">Descrição</label>
						<input type="text" name="descricao" id="id-descricao" class="form-control" placeholder="Digite a descrição">
					</div>
					<div class="form-group">
						<label for="id-datamovimentacao">Data</label>
						<input type="text" name="data" id="id-datamovimentacao" class="form-control" placeholder="Digite a data" required>
					</div>
					<div class="form-group">
						<label for="id-valor">Valor</label>
						<input type="text" name="valor" id="id-valor" class="form-control" placeholder="Digite o valor" required>
					</div>
					<input type="submit" value="Salvar" class="btn btn-primary salvar">
				</form>
			</div>
			<%@ include file="footer.jsp" %>
		</main>

	    <footer class="fixed-bottom">
			<section class="box_rodape">
				<a href="painel_de_controle.jsp">
					<img src="imagens/Inicio.svg">
				</a>		
				<img src="imagens/Carteira.svg">
				<img src="imagens/Adicionar_2.svg">
				<img src="imagens/Grafico.svg">
				<img src="imagens/Configuracoes.svg">
			</section>
	    </footer>

	</body>

</html>