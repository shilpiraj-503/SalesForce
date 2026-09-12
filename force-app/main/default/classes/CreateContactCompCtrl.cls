public class CreateContactCompCtrl {

    @AuraEnabled
    public static Id insertContact(Contact con){
        
        insert con;
        return con.Id;
    }
}