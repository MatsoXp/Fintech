<%@page import="br.com.fintech.dao.impl.OracleConsultaDAO"%>

<%@page import="br.com.fintech.factory.DAOFactory"%>
<%@page import="br.com.fintech.dao.ConsultaDAO"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Fintech</title>
		<%@ include file="header.jsp" %>
		<link rel="stylesheet" href="resources/css/style_painel_de_controle.css">
	</head>
	<body>
		<header>
			<img src="imagens/User.svg" alt="Usuário" class="usuario">
			<nav>
				<img src="imagens/Tres_tracos.svg" class="menu">
			</nav>
			<form>
				<label>
					<img src="imagens/Lupa.svg">
					<input class="pesquisa" type="search" name="Pesquisa" id="Pesquisa" required autocomplete="on" placeholder="Pesquisa">
				</label>
			</form>
		</header>
		<main>
			<section>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-auto">
							<p class="saldo">Saldo</p>
							<p id="valor_saldo">
								<%
								OracleConsultaDAO dao;
								dao = DAOFactory.getConsultaDAO();
								out.print("R$"+dao.totalReceita());
								%>
							</p>
						</div>
						<div class="col-auto">
							<p class="despesa" >Despesas do mês</p>
							<p id="valor_saldo">
								<%
								OracleConsultaDAO dau;
								dau = DAOFactory.getConsultaDAO();
								out.print("R$"+dau.totalDespesa());
								%>
							</p>
						</div>
					</div>
					<div class="row justify-content-center botoes_principais">
						
						<div class="col-auto">
							<a href = "cadastro-movimentacao.jsp">
								<button><img src="imagens/Dolar_cash.svg">Registrar</button>
							</a>
						</div>
						
						<div class="col-auto">
							<a href = "movimentacao?acao=listar">
								<button><img src="imagens/Prancheta.svg">Exibir</button>
							</a>
						</div>
						
						<div class="col-auto">
							<a href = "https://google.com.br">
								<button><img src="imagens/Cartao.svg">Cartões</button>
							</a>
						</div>

						<div class="col-auto">
							<a href = "https://google.com.br">
								<button class="receitas"><img src="imagens/Grafico_crescente.svg">Receitas</button>
							</a>
						</div>
						
						<div class="col-auto">
							<a href = "https://google.com.br">
								<button class="despesas"><img src="imagens/Grafico_decrescente.svg">Despesas</button>
							</a>
						</div>
					
						<div class="col-auto">
							<a href = "https://google.com.br">
								<button><img src="imagens/Dolarcoin.svg">Metas</button>
							</a>
						</div>
						
						
						
						
					</div>
				</div>
				
			</section>
			<section class="box_transacoes">
				<p>Transações</p>
				<img src="imagens/Adicionar.svg">
			</section>
		</main>
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

	    <!-- JavaScript -->
		<script src="JavaScript/painel_de_controle.js"></script>
	</body>
</html>