public class StandardCostCalculator {
    public static enum ContactType {
        CELLNUMBER, EMAIL
    }

    private double tax;
    private double price;
    
    public double calculateCost(double units, ContactType type){

        if (type == ContactType.EMAIL){
            tax = 0.0;
        }
        else if(type == ContactType.CELLNUMBER){
            tax = 0.10;
        }

        price = units*tax;

        return price;
    }


}
