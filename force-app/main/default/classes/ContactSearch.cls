public class ContactSearch {
    
    public static List<Contact> searchForContacts(String paramSName, String paramPCode){
        
        return [Select Name from Contact where LastName=:paramSName and MailingPostalCode=:paramPCode];
        
        
    }

}