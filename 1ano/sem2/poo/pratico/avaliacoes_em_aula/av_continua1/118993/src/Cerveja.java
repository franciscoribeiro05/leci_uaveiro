import java.util.Scanner;

public class Cerveja extends Item{
    Scanner scanner = new Scanner(System.in);

    private String familia;
    private String cor;
    private String tamanho;
    private boolean alcool;

    public Cerveja(String nome,double precoB,String familia,String cor,String tamanho,boolean alcool){
        super(nome,precoB);


        this.cor = cor;
        this.familia = familia;
        this.tamanho = tamanho;
        this.alcool = alcool;
    }

    public void lerInformacoesCerveja(){

        System.out.println("Introduza o nome: ");
        setNome(scanner.nextLine());

        System.out.println("Preço de Base: ");
        setPrecoB(scanner.nextDouble());
        scanner.nextLine();
            
        System.out.print("Introduza a familia: \n1.Ales\n2.Lagers\n3.Lambics");
        int escolha = scanner.nextInt();

        if(escolha == 1){
            familia = "Ales";
        }
        else if(escolha == 2){
            familia = "Lagers";
        }
        else if(escolha == 3){
            familia = "Lambics";
        }
        scanner.nextLine();

        System.out.print("\nIntroduza a cor: ");
        cor = scanner.nextLine();

        System.out.print("\nIntroduza o tamanho: ");
        tamanho = scanner.nextLine();

        System.out.println("Alcool: ");
        alcool = scanner.nextBoolean();
        scanner.nextLine();

    }

    @Override
    public String getTipo(){
        return "Cerveja";
    }

    @Override
    public int hashCode(){
        final int prime = 31;
        int result = 1;
        result = prime * result + getCodigo();
        result = prime * result + ((getNome() == null) ? 0 : getNome().hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj){
        return this.hashCode() == obj.hashCode();
    }

    @Override
    public String toString(){
        String parteGeral = "Cerveja : Nome = " + getNome() + " Preço = " + getPrecoB() + " Código = " + getCodigo();
        String particular = " Famiĺia = " + familia + " Cor = " + cor + " Tamanho = " + tamanho + " Álcool = " + alcool;
    
        return parteGeral + particular;
    }

}

