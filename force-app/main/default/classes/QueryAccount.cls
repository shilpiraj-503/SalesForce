public class QueryAccount {

    public void queryAccount(){
        List<Account> accList=[SELECT Name,Type,Rating FROM Account];
        Integer count=accList.size();
        
    }
}