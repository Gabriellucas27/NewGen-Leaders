package dominio;

public class Localizacao {

    //ATRIBUTOS:

    private int codigo;
    private String rua;
    private int numero;
    private String bairro;
    private String cidade;
    private String uf;
    private String cep;


    //METODOS:
    public void cadastrar_localizacao(Localizacao localizacao){

    }

    public void  editar_localizacao(int codigo){

    }

    public void excluir_localizacao(){

    }



    // GETS E SETS:

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getRua() {
        return rua;
    }

    public void setRua(String rua) {
        this.rua = rua;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getUf() {
        return uf;
    }

    public void setUf(String uf) {
        this.uf = uf;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }


    
    
}
