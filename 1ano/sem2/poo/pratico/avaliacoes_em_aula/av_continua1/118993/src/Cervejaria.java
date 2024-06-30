import java.util.Scanner;
import java.util.ArrayList;

public class Cervejaria {
    Scanner scanner = new Scanner(System.in);

    private double vendasCerveja = 0;
    private double vendasBifana = 0;
    private double vendasAcompanhamento = 0;

    private ArrayList<Item> arrayItems = new ArrayList<>();

    public void adicionarItems(Item item){
        arrayItems.add(item);
    }

    public void listarItem(){
        for(Item item : arrayItems){
            System.out.println(item);
        }
    }

    public Item procurarItem(int codigoProcurar){
        for(Item item : arrayItems){
            if(item.getCodigo() == codigoProcurar){
                return item;
            }
        }
        return null;
    }

    public void vender(int codigo){
        Item item = procurarItem(codigo);

        if(item != null){
            arrayItems.remove(item);
            

            if(item.getTipo() == "Cerveja"){
                vendasCerveja += item.getPrecoB();
            }
            else if(item.getTipo() == "Bifana"){
                vendasBifana += item.getPrecoB();
            }
            else if(item.getTipo() == "Acompanhamento"){
                vendasAcompanhamento += item.getPrecoB();
            }
        }
    }

    public void menuDeVendas(){
        System.out.println("Código do item: ");
        int codigo = scanner.nextInt();

        Item item = procurarItem(codigo);
        if(item != null){
            vender(codigo);
        }
    }

    public String getVendas(){
        return "\nCerveja: " + vendasCerveja + "\nAcompanhamento: " + vendasAcompanhamento + "\nBifanas: " + vendasBifana;
    }
    
}
