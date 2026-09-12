public class WrapperCtrl1 {
	
	//
    public AccConWrapper wrap {get;set;}
    public List<AccConWrapper> wrapList {get;set;}
    
    public WrapperCtrl1(){
        wrap=new AccConWrapper();
        //no value stored in list for now
        wrapList= new List<AccConWrapper>();
    }
    public void addMethod(){
        wrapList.add(wrap);
        wrap=new AccConWrapper();
    }
     public void clearMethod(){
        wrapList.clear();
       
    }
    
	//private type of wrapper class
    public class AccConWrapper{
        public Account acc {get;set;}
        public Contact con {get;set;}
        
        public AccConWrapper(){
            acc = new Account();
            con = new Contact();
        }
    }
}