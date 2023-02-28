<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="header.jsp" %>

<link rel="stylesheet" href="resources/css/bootstrap-grid.css">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/lista-movimentacao.css">



<title>Movimentações</title>
</head>
<body>
	<header>
		<img src="imagens/User.svg" alt="Usuário" class="usuario">
		<nav>
			<img src="imagens/Tres_tracos.svg" class="menu">
		</nav>
	</header>

	<div class="container box">
		<h2>Movimentações</h2>


		<c:if test="${not empty msg }">
			<div class="alert alert-success">${msg}</div>
		</c:if>
		<c:if test="${not empty erro }">
			<div class="alert alert-danger">${erro}</div>
		</c:if>
		
		<table class="table table-striped">
			<tr>
				<th scope="col">Categoria</th>
				<th scope="col">Segmento</th>
				<th scope="col">Descrição</th>
				<th scope="col">Data</th>
				<th scope="col">Valor</th>
				<th scope="col"></th>
			</tr>
			<c:forEach items="${movimentacoes}" var="p">
				<tr>
					<td maxlength="10" scope="col">${p.categoria}</td>
					<td maxlength="10" scope="col">${p.subCategoria}</td>
					<td maxlength="10" scope="col">${p.descricao}</td>
					<td maxlength="10" scope="col">
						<fmt:formatDate value="${p.data.time}" pattern="dd/MM/YYYY"/>
					</td>
					<td maxlength="10">${p.valor}</td>
					
				</tr>
				<tr>
					<td class="botoes" scope="col">
						<c:url value="movimentacao" var="link">
							<c:param name="acao" value="abrir-form-edicao"/>
							<c:param name="id" value="${p.id}"/>
						</c:url>
						
						
						
						<button type="button"
						class="btn btn-danger btn-xs botao" 
						onclick="location.href='${link}'" type="button">Editar</button>
						
						
						<%-- <a href="${link}" id="botaoEditar">Editar</a> --%>
						
					</td>
					
					
					<td class="botoes" scope="col">
					
					<td class="botoes" scope="col">						
						<button type="button"
						class="btn btn-danger btn-xs botao" 
						data-toggle="modal" 
						data-target="#excluirModal" 
						onClick="codigoExcluir.value = ${p.id}">
							Excluir
						</button>
					</td>
				</tr>
	
			</c:forEach>
		</table>
	</div>
	
<%@ include file="footer.jsp" %>

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



<!-- Modal -->
<div class="modal fade" id="excluirModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
 	<div class="modal-dialog" role="document">
    	<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Confirmação</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
        		</button>
			</div>
			<div class="modal-body">
				Deseja realmente excluir a movimentação?
			</div>
			<div class="modal-footer">
				<form action="movimentacao" method="post">
					<input type="hidden" name="acao" value="excluir">
					<input type="hidden" name="codigo" id="codigoExcluir">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
					<button type="submit" class="btn btn-danger">Excluir</button>
				</form>
			</div>
		</div>
	</div>
</div>

</body>
</html>



