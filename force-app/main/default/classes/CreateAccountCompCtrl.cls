public class CreateAccountCompCtrl {
	 @AuraEnabled
    public static Id insertAccount(Account acc){
        
        insert acc;
        return acc.Id;
    }

}