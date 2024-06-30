import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class Contact implements Comparable<Contact>{
    private static int contactscount;
    private int id;
    private String name;
    private int numTel;
    private String email;
    private LocalDate data;
    private double minutos;


    //Transformar o localdate numa String
    
    // Construtores
    public Contact(String name, int numTel, String email,String data) {
        this.id = ++contactscount;

        this.name = name;
        this.numTel = numTel;
        this.email = email;

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyy-MM-dd");
        LocalDate date = LocalDate.parse(data,formatter);

        this.data = date;
    }

    public Contact(int id, String name, int numTel, String email,String data) {
        this.id = id;

        this.name = name;
        this.numTel = numTel;
        this.email = email;

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyy-MM-dd");
        LocalDate date = LocalDate.parse(data,formatter);

        this.data = date;
        
    }


    // Métodos setters e getters

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getNumTel() {
        return this.numTel;
    }

    public void setNumTel(int numTel) {
        this.numTel = numTel;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public LocalDate getData(){
        return this.data;
    }

    public void setData(LocalDate data) {
        this.data = data;
    }

    public double getMinutos(){
        return this.minutos;
    }

    public void setMinutos(double minutos) {
        this.minutos = minutos;
    }


    // Outros Métodos

    public void call(double minutos){
        setMinutos(this.minutos + minutos);
    }

    public void email(){
        
    }


    @Override
    public int compareTo(Contact p) {
        return this.id - p.getId();
    }


    @Override
    public String toString() {
        return "{" +
            " id='" + getId() + "'" +
            ", name='" + getName() + "'" +
            ", numTel='" + getNumTel() + "'" +
            ", email='" + getEmail() + "'" +
            ",data='" + getData() + "'" +
            "}";
    }


}
