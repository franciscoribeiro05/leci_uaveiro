import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Scanner;
import java.util.TreeSet;

public class ContactManager {
    TreeSet<Contact> contactSet = new TreeSet<>();

    public void addContact(Contact contact) {
         if (isIdAlreadyUsed(contact.getId())) {
            contact.setId(getHigherIdInSet());
        } else {
            contactSet.add(contact);
        }
    }

    public boolean isIdAlreadyUsed(int id) {
        if (getContact(id) == null) {
            return false;
        } else {
            return true;
        }
    }

    public int getHigherIdInSet() {
        return contactSet.last().getId();
    }

    public Contact searchContactToRemove(int id) {
        for (Contact p : contactSet) {
            if (id == p.getId()) {
                return p;
            }
        }
        return null;
    }

    public void removeContact(int id) {
        Contact contact = searchContactToRemove(id);
        if (contact != null) {
            contactSet.remove(contact);
        }
    }

    public Contact getContact(int id) {
        for (Contact p : contactSet) {
            if (id == p.getId()) {
                return p;
            }
        }
        return null;
    }

    public void printAllContacts() {
        for (Contact p : contactSet) {
            System.out.println(p);
        }
    }

    public void readFile(String fich) throws FileNotFoundException {
        File contactsFile = new File("src/" + fich);
        Scanner contactsScanner = new Scanner(contactsFile);

        if (contactsScanner.hasNextLine()) {
            contactsScanner.nextLine();
        }
        
        while (contactsScanner.hasNextLine()) {
            String contactEntry = contactsScanner.nextLine();
            String[] contactEntrySplitted = contactEntry.split("    ");

            int   extractednumTel = Integer.parseInt(contactEntrySplitted[1]);

            Contact extractedContact= new Contact(contactEntrySplitted[0],
                                                extractednumTel,
                                                contactEntrySplitted[2],
                                                contactEntrySplitted[2]
                                                );
            
            addOrOverrideContact(extractedContact);
        }

        contactsScanner.close();
        
    }

    public double calculateContactCost(int id){
        Contact contact = getContact(id);
        return StandardCostCalculator(minutos);
    }


    private void addOrOverrideContact(Contact p) {
        int contactId = p.getId();
        if (isIdAlreadyUsed(contactId)) {
            removeContact(contactId);
        }
        contactSet.add(p);
    }

    public void writeFile(String fich) throws FileNotFoundException, UnsupportedEncodingException {
        PrintWriter writer = new PrintWriter(fich, "UTF-8");
        for (Contact p : contactSet) {
            writer.println(String.format("%d %.2f %s %s", p.getId(), p.getName(), p.getNumTel(), p.getEmail()));
        }

        writer.close();
    }
}
