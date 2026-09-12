public class QueueableExample2 implements Queueable{
    
	public void execute(QueueableContext qc){
        //Delete todays record
        QueueableExample1 qe1=new QueueableExample1();
        Id jobId = System.enqueueJob(qe1);
        System.debug('First Queue JobId '+jobId);
        List<Contact> conList=[SELECT Name FROM Contact WHERE createdDate=Today];
        delete conList;
    }
    
}