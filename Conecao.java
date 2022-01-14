/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ConexaoBancoDeDados;

import java.sql.*;

public class Conecao {
    Connection conBanco;
    
    public boolean abrirConexao(){
        String url = "jdbc:mysql://localhost:3307/oursupermarket?user=root&password=1234";
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conBanco = DriverManager.getConnection(url);
            return true;
        }catch(Exception erro){
            erro.printStackTrace();
            return false;
        }
    }
    
    public boolean fecharConexao(){
        try{
            conBanco.close();
            return true;
        }catch(SQLException erro){
            erro.printStackTrace();
            return false;
        }
    }
    
    public Connection obterConexao(){return conBanco;}
}
