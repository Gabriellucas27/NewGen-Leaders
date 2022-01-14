<%-- 
    Document   : excluirLocalizacao
    Created on : 14 de jan. de 2022, 15:19:41
    Author     : AURIANE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="conexao" scope="page" class="ConexaoBancoDeDados.Conecao" />
<jsp:useBean id="localizacao" scope="page" class="ConexaoBancoDeDados.Localizacao" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Excluir Localização</h1>
        <%
                        
                        int idLocalizacao = Integer.parseInt(request.getParameter("id"));
                        if(conexao.abrirConexao()){
                            localizacao.configurarConexao(conexao.obterConexao());
                            
                            if(localizacao.excluirRegistro(idLocalizacao)){
                                out.println("<h2>Excluido com sucesso!</h2>");
                            }else{
                                out.println("<h2>Erro!</h2>");
                            }
                            conexao.fecharConexao();
                        }else{
                            out.println("<h2>Falha na conexao!</h2>");
                        }    
                    %>
    </body>
</html>
