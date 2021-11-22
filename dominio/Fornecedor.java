package dominio;

public class Fornecedor {

    //ATRIBUTOS:
    private int codigo;
    private String nome;
    private int telefone;
    private String endereco;


    //METODOS:
    void cadastrar_fornecedor(Fornecedor fornecedor){

    }

    void editar_fornecedor(int codigo){ // usamos o codigo para identificar o fornecedor.

    }

    void excluir_fornecedor(int codigo){

    }


    //GETS E SETS:

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getTelefone() {
        return telefone;
    }

    public void setTelefone(int telefone) {
        this.telefone = telefone;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    
    
}
