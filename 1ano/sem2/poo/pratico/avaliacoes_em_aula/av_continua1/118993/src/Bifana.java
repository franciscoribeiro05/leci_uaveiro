import java.util.Scanner;

public class Bifana extends Item{
    Scanner scanner = new Scanner(System.in);

    private String pao;
    private String carne;

    public Bifana(String nome,double precoB,String pao,String carne){
        super(nome,precoB);


        this.pao = pao;
        this.carne = carne;
       
    }

    public void lerInformacoesBifana(){

        System.out.println("Introduza o nome: ");
        setNome(scanner.nextLine());

        System.out.println("Preço de Base: ");
        setPrecoB(scanner.nextDouble());
        scanner.nextLine();
            
        System.out.print("Introduza o tipo de pão: ");
        pao = scanner.nextLine();

        System.out.print("\nIntroduza o tipo de carne: ");
        carne = scanner.nextLine();


    }

    @Override
    public String getTipo(){
        return "Bifana";
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
        String parteGeral = "Bifana : Nome = " + getNome() + " Preço = " + getPrecoB() + " Código = " + getCodigo();
        String particular = " Pão = " + pao + " Carne = " + carne;
    
        return parteGeral + particular;
    }

}


