public class DisplayAccCtrl {
    public List<Account> accList {get;set;}
    public DisplayAccCtrl(){
        accList=[SELECT Name,Type,Rating,Industry
                FROM Account
                LIMIT 10];

   }
    public void displayRecMethod(){
        accList=[SELECT Name,Type,Rating,Industry
                FROM Account
                LIMIT 20];

    }
}