import java.util.Scanner;

public class Acompanhamento extends Item{
    Scanner scanner = new Scanner(System.in);

    private int quantidade;
 

    public Acompanhamento(String nome,double precoB,int quantidade){
        super(nome,precoB);

        this.quantidade = quantidade;
    }

    public void lerInformacoesAcompanhamento(){

        System.out.println("Introduza o nome: ");
        setNome(scanner.nextLine());

        System.out.println("Preço de Base: ");
        setPrecoB(scanner.nextDouble());
        scanner.nextLine();
            
        System.out.print("Introduza a quantidade: ");
        quantidade = scanner.nextInt();
        scanner.nextLine();

    }

    @Override
    public String getTipo(){
        return "Acompanhamento";
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
        String parteGeral = "Acompanhamento : Nome = " + getNome() + " Preço = " + getPrecoB() + " Código = " + getCodigo();
        String particular = " Quantidade = " + quantidade;
    
        return parteGeral + particular;
    }

}


