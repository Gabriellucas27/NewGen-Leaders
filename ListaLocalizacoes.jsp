<%-- 
    Document   : ListaDeLocalizacoes
    Created on : 13 de jan. de 2022, 11:08:01
    Author     : AURIANE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Date"%>
<jsp:useBean id="conexao" scope="page" class="ConexaoBancoDeDados.Conecao" />
<jsp:useBean id="localizacao" scope="page" class="ConexaoBancoDeDados.Localizacao" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista De Localizações</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Rua</th>
                        <th>Número</th>
                        <th>Bairro</th>
                        <th>Cidade</th>
                        <th>UF</th>
                        <th>CEP</th>
                        <th>Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        ResultSet rsRegistros;
                        if(conexao.abrirConexao()){
                            localizacao.configurarConexao(conexao.obterConexao());
                            rsRegistros = localizacao.ListarRegistro(0);

                            while(rsRegistros.next()){
                                out.println("<tr>");
                                out.println("<th>"+rsRegistros.getInt("id")+"</th>");
                                out.println("<th>"+rsRegistros.getString("rua")+"</th>");
                                out.println("<th>"+rsRegistros.getString("numero")+"</th>");
                                out.println("<th>"+rsRegistros.getString("bairro")+"</th>");
                                out.println("<th>"+rsRegistros.getString("cidade")+"</th>");
                                out.println("<th>"+rsRegistros.getString("uf")+"</th>");
                                out.println("<th>"+rsRegistros.getString("cep")+"</th>");
                                out.println("<th><a href='editarLocalizacao.jsp?id="+rsRegistros.getInt("id")+"'>Editar</a><br><br><a href='excluirLocalizacao.jsp?id="+rsRegistros.getInt("id")+"'>Excluir</a></th>");
                                out.println("</tr>");
                            }
                            conexao.fecharConexao();
                        }else{
                            out.println("<h2>Falha na conexao!</h2>");
                        }
                    %>
                </tbody>
            </table>
         
    </body>
</html>
