public class SearchAccCtrl {
	
   public List<Account> accList {get;set;}
    public String searchName {get;set;}
    
    public SearchAccCtrl()
    {
		accList= [SELECT Name,Type,Rating,Industry
                 FROM Account];
    }
    public void searchMethod(){
        System.debug('Search Name' +searchName);
        String strName=searchName+ '%';
		accList = [SELECT Name,Type,Rating,Industry
                 FROM Account
                  WHERE Name
                  LIKE :strName];        
    }

 
}