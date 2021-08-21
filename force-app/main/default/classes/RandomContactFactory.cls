public class RandomContactFactory {

    public static List<Contact> generateRandomContacts(Integer numOfContacts, String lname){
        
        List<Contact> cons = new List<Contact>(); 
        
        for(Integer i = 0; i < numOfContacts; i++){
            Contact con = new Contact();
            con.FirstName 	= 'Fname' + i;
            con.LastName	= lname;
            
            cons.add(con);
        }
        insert cons;
        return cons;
        
    }
}