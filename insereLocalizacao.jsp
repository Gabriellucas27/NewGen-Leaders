<%-- 
    Document   : insereLocalizacao
    Created on : 7 de jan. de 2022, 15:42:19
    Author     : AURIANE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Conexão com Banco De Dados</title>
    </head>
    <body>
        <h1>Cadastro de Localização.</h1>
        <form action="cadastroLocalizacao.jsp" method="get">
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
                        <th><input type="text" name="rua"/></th>
                    </tr>
                    <tr>
                        <th>Número: </th>
                        <th><input type="text" name="numero"/></th>
                    </tr>
                    <tr>
                        <th>Bairro: </th>
                        <th><input type="text" name="bairro"/></th>
                    </tr>
                    <tr>
                        <th>Cidade: </th>
                        <th><input type="text" name="cidade"/></th>
                    </tr>
                    <tr>
                        <th>UF: </th>
                        <th>
                            <select id="uf" name="uf">
                                <option value="AC">Acre</option>
                                <option value="AL">Alagoas</option>
                                <option value="AP">Amapá</option>
                                <option value="AM">Amazonas</option>
                                <option value="BA">Bahia</option>
                                <option value="CE">Ceará</option>
                                <option value="DF">Distrito Federal</option>
                                <option value="ES">Espírito Santo</option>
                                <option value="GO">Goiás</option>
                                <option value="MA">Maranhão</option>
                                <option value="MT">Mato Grosso</option>
                                <option value="MS">Mato Grosso do Sul</option>
                                <option value="MG">Minas Gerais</option>
                                <option value="PA">Pará</option>
                                <option value="PB">Paraíba</option>
                                <option value="PR">Paraná</option>
                                <option value="PE">Pernambuco</option>
                                <option value="PI">Piauí</option>
                                <option value="RJ">Rio de Janeiro</option>
                                <option value="RN">Rio Grande do Norte</option>
                                <option value="RS">Rio Grande do Sul</option>
                                <option value="RO">Rondônia</option>
                                <option value="RR">Roraima</option>
                                <option value="SC">Santa Catarina</option>
                                <option value="SP">São Paulo</option>
                                <option value="SE">Sergipe</option>
                                <option value="TO">Tocantins</option>
                                <option value="EX">Estrangeiro</option>
                            </select>
                        </th>
                    </tr>
                    <tr>
                        <th>CEP: </th>
                        <th><input type="text" name="cep"/></th>
                    </tr>
                    <tr>
                        <th><input type="submit" value="Enviar"/></th>
                    </tr>
                </tbody>
            </table>

        </form>
        
    </body>
</html>
