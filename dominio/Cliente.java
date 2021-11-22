package dominio;

public class Cliente {
    
    //ATRIBUTOS:

    private int codigo_cliente;
    private String nome;
    private String telefone;
    private String cpf;
    private String rg;
    private String endereco;
    
    //METODOS:
    
    public void cadastrar_cliente(Cliente cliente){

    }

    public void editar_cliente(int codigo_cliente){
        
    }

    public void excluir_cliente(int codigo_cliente){
        
    }


    // GETS E SETS:

    public int getCodigo_cliente() {
        return codigo_cliente;
    }

    public void setCodigo_cliente(int codigo_cliente) {
        this.codigo_cliente = codigo_cliente;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    
}
