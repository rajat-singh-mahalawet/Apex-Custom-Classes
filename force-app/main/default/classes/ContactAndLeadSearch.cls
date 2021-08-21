public class ContactAndLeadSearch {
    
    public static List<List<sObject>> searchContactsAndLeads(String paramName){
        List<List<sObject>> searchList = [Find :paramName IN ALL FIELDS RETURNING Contact(FirstName,LastName), Lead(FirstName,LastName) ];
        return searchList;
        
    }

}