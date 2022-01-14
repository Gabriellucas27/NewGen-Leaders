/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ConexaoBancoDeDados;

import java.sql.*;

public class Localizacao {
    private Connection conBanco;
    private PreparedStatement psComando;
    private PreparedStatement stmt;
    private ResultSet rsRegistros;
    
    public void configurarConexao(Connection conBanco) {this.conBanco = conBanco;}
    
    public boolean inserirRegistro(String rua, String numero, String bairro, String cidade, String uf, String cep){
        String strComandoSQL;
        try{
            strComandoSQL = "INSERT INTO localizacao (rua,numero,bairro,cidade,uf,cep) VALUES (?,?,?,?,?,?)";
            stmt = conBanco.prepareStatement(strComandoSQL);
            stmt.setString(1,rua);
            stmt.setString(2,numero);
            stmt.setString(3,bairro);
            stmt.setString(4,cidade);
            stmt.setString(5,uf);
            stmt.setString(6,cep);
            stmt.execute();
            
            return true;
        }catch(Exception erro){
            erro.printStackTrace();
            return false;
        }
    }
    
    public boolean alterarRegistro(String id, String rua, String numero, String bairro, String cidade, String uf, String cep){
        String strComandoSQL;
        try{
            //int idNovo = Integer.parseInt(id);
            strComandoSQL = "UPDATE localizacao SET rua=?,numero=?,bairro=?,cidade=?,uf=?,cep=? WHERE id="+id;
            stmt = conBanco.prepareStatement(strComandoSQL);
            stmt.setString(1,rua);
            stmt.setString(2,numero);
            stmt.setString(3,bairro);
            stmt.setString(4,cidade);
            stmt.setString(5,uf);
            stmt.setString(6,cep);
            stmt.executeUpdate();
            
            return true;
        }catch(Exception erro){
            erro.printStackTrace();
            return false;
        }
    }
    
    public boolean excluirRegistro(int id){
        String strComandoSQL;
        try{
            strComandoSQL = "DELETE FROM localizacao WHERE id = "+id;
            psComando = conBanco.prepareStatement(strComandoSQL);
            psComando.executeUpdate();
            
            return true;
        }catch(Exception erro){
            erro.printStackTrace();
            return false;
        }
    }
    
    public ResultSet ListarRegistro(int ordem){
        String strComandoSQL;
        try{
            if(ordem == 0){
                strComandoSQL = "SELECT * FROM oursupermarket.localizacao WHERE id";
            }else{
                strComandoSQL = "SELECT * FROM oursupermarket.localizacao WHERE id="+ordem;
            }
             
            
            psComando = conBanco.prepareStatement(strComandoSQL);
            rsRegistros = psComando.executeQuery();
            
            return rsRegistros;
        }catch(Exception erro){
            erro.printStackTrace();
            return null;
        }
    }
}
