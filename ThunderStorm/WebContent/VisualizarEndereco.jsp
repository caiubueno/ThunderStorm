<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>Visualizar Endereço</title>

            <link href="css/bootstrap.min.css" rel="stylesheet">
            <link href="css/style.css" rel="stylesheet">
        </head>

        <body>
	        <%
			response.setHeader("Cache-Control", "no-cache, no-store, must-revalidade");
			if (session.getAttribute("usuario") == null) {
				response.sendRedirect("Login.jsp");
			}
			%>
                <!-- Modal -->
                <div class="modal fade" id="delete-modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar"><span aria-hidden="true">&times;</span>
                                </button>
                                <h4 class="modal-title" id="modalLabel">Excluir Endereço</h4>
                            </div>
                            <div class="modal-body">
                                Deseja realmente excluir este Endereço?
                            </div>
                            <div class="modal-footer">
                                <form action="ManterCadastroEndereco.do" method="post">
                                    <input type="hidden" name="id" value="${endereco.id }" />
                                    <button type="submit" class="btn btn-primary" name="acao" value="Excluir">Sim</button>
                                    <button type="button" class="btn btn-default" data-dismiss="modal">N&atilde;o</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.modal -->
                <!-- Barra superior com os menus de navegação -->
				<c:import url="Menu.jsp"/>
				<br>
                <!-- Container Principal -->
                <div id="main" class="container">
                    <h3 class="page-header">Visualizar Endereço #${endereco.id }</h3>
                    <div class="row">
                        <div class="col-md-6">
                            <p><strong>Tipo de Endereço: </strong>
                               ${endereco.tipodeendereco }</p>
                        </div>
                       </div> 
                    <div class="row">
                        <div class="col-md-6">
                            <p><strong>Endereço: </strong>
                                ${endereco.endereco }, ${endereco.numero } - ${endereco.cidade } - ${endereco.estado } -
                                <strong>Cep: </strong> ${endereco.cep } 
                                <p> <strong>Complemento: </strong>${endereco.complemento }</p>
                        </div>
                    </div>
                    
                    <hr />
                    <div id="actions" class="row">
                        <div class="col-md-12">
                            <a href="ManterCadastroEndereco.do?acao=Editar&id=${endereco.id }" class="btn btn-primary">Editar</a>
                            <a href="#" class="btn btn-danger" data-toggle="modal" data-target="#delete-modal">Excluir</a>
                            <a href="ListarEndereco.jsp" class="btn btn-dark">Voltar</a>
                        </div>
                    </div>
                <script src="js/jquery.min.js"></script>
                <script src="js/bootstrap.min.js"></script>
        </body>

        </html>