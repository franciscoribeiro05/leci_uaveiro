import java.util.Scanner;


public class MainCervejaria {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        Cervejaria cervejaria = new Cervejaria();

        int opcao = 0;
        do{

            System.out.println("\nMenu:");
            System.out.println("1. Adicionar um item");
            System.out.println("2. Listar itens");
            System.out.println("3. Vender um item");
            System.out.println("4. Listar o total de vendas");
            System.out.println("5. Sair");
            System.out.print("Opção: ");
            opcao = sc.nextInt();

            switch(opcao){
                case 1:
                    System.out.println("\n1. Adicionar um item do tipo");
                    System.out.println("1. Bifana");
                    System.out.println("2. Acompanhamento");
                    System.out.println("3. Cerveja");
                    System.out.print("Tipo de item: ");
                    int opcaoItem = sc.nextInt();
                    sc.nextLine();
                    switch(opcaoItem){
                        case 1:
                            Bifana bifana = new Bifana(null, 0, null, null);
                            bifana.lerInformacoesBifana();
                            cervejaria.adicionarItems(bifana);
                            break;
                        case 2:
                            Acompanhamento acompanhamento = new Acompanhamento(null, 0, 0);
                            acompanhamento.lerInformacoesAcompanhamento();
                            cervejaria.adicionarItems(acompanhamento);
                            break;
                        case 3:
                            Cerveja cerveja = new Cerveja(null, 0, null, null, null, false);
                            cerveja.lerInformacoesCerveja();
                            cervejaria.adicionarItems(cerveja);
                            break;
                    }
                    break;
                case 2:
                    cervejaria.listarItem();
                    break;

                case 3:
                    cervejaria.menuDeVendas();
                    break;

                case 4:
                    System.out.println(cervejaria.getVendas());
                    break;
                case 5:
                    System.out.println("Fim!");
                    sc.close();
                    break;
            }
        } while(opcao != 5);
    }
}

