<%-- 
    Document   : editarLocalizacao
    Created on : 13 de jan. de 2022, 15:50:29
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
        <title>JSP Page</title>
    </head>
    <body>
        <%
                        ResultSet rsRegistros;
                        String valorRua = "";
                        String valorNumero = "";
                        String valorBairro = "";
                        String valorCidade = "";
                        String valorUf = "";
                        String valorCep = "";
                        
                        int idLocalizacao = Integer.parseInt(request.getParameter("id"));
                        if(conexao.abrirConexao()){
                            localizacao.configurarConexao(conexao.obterConexao());
                            
                            rsRegistros = localizacao.ListarRegistro(idLocalizacao);
                            while(rsRegistros.next()){
                                valorRua = rsRegistros.getString("rua");
                                valorNumero = rsRegistros.getString("numero");
                                valorBairro = rsRegistros.getString("bairro");
                                valorCidade = rsRegistros.getString("cidade");
                                valorUf = rsRegistros.getString("uf");
                                valorCep = rsRegistros.getString("cep");
                            }
                            conexao.fecharConexao();
                        }else{
                            out.println("<h2>Falha na conexao!</h2>");
                        }    
                    %>
        <h1>Hello World!</h1>
        <h1>Cadastro de Localização.</h1>
        <form action="AtualizaLocalizacao.jsp" method="get">
            
            <table border="1">
                <thead>
                    <tr>
                        <th>Tipo</th>
                        <th>Dados</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                       <th>Rua: </th>
                       <th><input type="text" name="rua" value="<%out.println(valorRua);%>"/></th>
                    </tr>
                    <tr>
                        <th>Número: </th>
                        <th><input type="text" name="numero" value="<%out.println(valorNumero);%>"/></th>
                    </tr>
                    <tr>
                        <th>Bairro: </th>
                        <th><input type="text" name="bairro" value="<%out.println(valorBairro);%>"/></th>
                    </tr>
                    <tr>
                        <th>Cidade: </th>
                        <th><input type="text" name="cidade" value="<%out.println(valorCidade);%>"/></th>
                    </tr>
                    <tr>
                        <th>UF: </th>
                        <th>
                            <select id="uf" name="uf">
                                <option value="<%out.println(valorUf);%>"><%out.println(valorUf);%></option>
                                <option value="AC">AC</option>
                                <option value="AL">AL</option>
                                <option value="AP">AP</option>
                                <option value="AM">AM</option>
                                <option value="BA">BA</option>
                                <option value="CE">CE</option>
                                <option value="DF">DF</option>
                                <option value="ES">ES</option>
                                <option value="GO">GO</option>
                                <option value="MA">MA</option>
                                <option value="MT">MT</option>
                                <option value="MS">MS</option>
                                <option value="MG">MG</option>
                                <option value="PA">PA</option>
                                <option value="PB">PB</option>
                                <option value="PR">PR</option>
                                <option value="PE">PE</option>
                                <option value="PI">PI</option>
                                <option value="RJ">RJ</option>
                                <option value="RN">RN</option>
                                <option value="RS">RS</option>
                                <option value="RO">RO</option>
                                <option value="RR">RR</option>
                                <option value="SC">SC</option>
                                <option value="SP">SP</option>
                                <option value="SE">SE</option>
                                <option value="TO">TO</option>
                                <option value="EX">EX</option>
                            </select>
                        </th>
                    </tr>
                    <tr>
                        <th>CEP: </th>
                        <th><input type="text" name="cep" value="<%out.println(valorCep);%>"/></th>
                    </tr>
                    <tr>
                        <input type="text" name="id" style="display: none;" value="<%out.println(idLocalizacao);%>"></th>
                        <th><input type="submit" value="Enviar"/></th>
                    </tr>
                </tbody>
            </table>       
        </form>
    </body>
</html>
