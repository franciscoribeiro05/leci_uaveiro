abstract class Item {
    private static int contagemDoItem = 0;
    private String nome;
    private double precoB;
    private int codigo;

    protected Item(String nome,double precoB){
        contagemDoItem++;
        codigo = 98 + contagemDoItem;

        this.nome = nome;
        this.precoB = precoB;
        
    }

    public abstract String getTipo();

    public abstract int hashCode();


    public String getNome() {
        return this.nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public double getPrecoB() {
        return this.precoB;
    }

    public void setPrecoB(double precoB) {
        this.precoB = precoB;
    }

    public int getCodigo() {
        return this.codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    
}
