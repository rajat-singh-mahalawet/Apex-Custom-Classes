@isTest
public class TestRestrictContactByName {
    
    @isTest static void invalidNameInsert(){
        
        Contact con = new Contact();
        con.LastName = 'INVALIDNAME';
        
        Test.startTest();
        
        Database.SaveResult sr = Database.insert(con);
        
        Test.stopTest();
        
        system.assert(!sr.isSuccess());
        system.assert(sr.getErrors().size() > 0);
        system.assertEquals('The Last Name INVALIDNAME is not allowed for DML', sr.getErrors()[0].getMessage());
        
        
    }

}