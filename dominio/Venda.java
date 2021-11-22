package dominio;

import java.util.Date;

public class Venda {

    //ATRIBUTOS:

    private int codigo_venda;
    private int venda;
    private int codigo_produto;
    private int codigo_cliente;
    private Date data_venda; 
    
    //METODOS:

    public void cadastrar_venda(Venda item){

    }

    public void editar_venda(int codigo_venda){
        
    }

    public void excluir_venda(int codigo_venda){
        
    }


    //GETS E SETS:

    public int getCodigo_venda() {
        return codigo_venda;
    }

    public void setCodigo_venda(int codigo_venda) {
        this.codigo_venda = codigo_venda;
    }

    public int getVenda() {
        return venda;
    }

    public void setVenda(int venda) {
        this.venda = venda;
    }

    public int getCodigo_produto() {
        return codigo_produto;
    }

    public void setCodigo_produto(int codigo_produto) {
        this.codigo_produto = codigo_produto;
    }

    public int getCodigo_cliente() {
        return codigo_cliente;
    }

    public void setCodigo_cliente(int codigo_cliente) {
        this.codigo_cliente = codigo_cliente;
    }

    public Date getData_venda() {
        return data_venda;
    }

    public void setData_venda(Date data_venda) {
        this.data_venda = data_venda;
    }



    
}
