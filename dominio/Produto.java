package dominio;

public class Produto {

    //ATRIBUTOS:
    private int codigo_prod;
    private String nome;
    private int fornecedor_cod;
    private double preco;
    private int estoque;
    


    //METODOS:
    public void cadastrar_produto(Produto produto){

    }

    public void editar_produto(int codigo_prod){ // codigo para identificar qual o produto

    }
    
    public void excluir_produto(int codigo_produto){

    }


    // GETS E SETS:

    public int getCodigo_prod() {
        return codigo_prod;
    }

    public void setCodigo_prod(int codigo_prod) {
        this.codigo_prod = codigo_prod;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getFornecedor_cod() {
        return fornecedor_cod;
    }

    public void setFornecedor_cod(int fornecedor_cod) {
        this.fornecedor_cod = fornecedor_cod;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public int getEstoque() {
        return estoque;
    }

    public void setEstoque(int estoque) {
        this.estoque = estoque;
    }

    
}
