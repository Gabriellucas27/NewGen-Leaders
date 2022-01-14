<%-- 
    Document   : AtualizaLocalizacao
    Created on : 14 de jan. de 2022, 09:55:46
    Author     : AURIANE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="conexao" scope="page" class="ConexaoBancoDeDados.Conecao" />
<jsp:useBean id="localizacao" scope="page" class="ConexaoBancoDeDados.Localizacao" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualizacao</title>
    </head>
    <body>
        <h1>Atualizacao de localizacoes</h1>
        <%
            String idLocalizacao = request.getParameter("id");
            String rua = request.getParameter("rua");
            String numero = request.getParameter("numero");
            String bairro = request.getParameter("bairro");
            String cidade = request.getParameter("cidade");
            String uf = request.getParameter("uf");
            String cep = request.getParameter("cep");
            if(conexao.abrirConexao()){
                localizacao.configurarConexao(conexao.obterConexao());
                
                if(localizacao.alterarRegistro(idLocalizacao, rua, numero, bairro, cidade, uf, cep)){
                    out.println("<h2>Editado Com Sucedido!</h2>");
                    //out.println(idLocalizacao);
                }else{
                    out.println("<h2>ERRO!</h2>");
                }
                conexao.fecharConexao();
            }else{
                out.println("<h2>Falha na conexao!</h2>");
            }
        %>
    </body>
</html>
