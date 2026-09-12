public class QueueableExample1 implements Queueable{
    
    public void execute(QueueableContext qc){
        //Delete todays record
        List<Account> accList=[SELECT Name FROM Account WHERE createdDate=Today];
        delete accList;
    }

}