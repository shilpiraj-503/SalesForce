public class ClaculatorCtrl {
    public Integer a {get;set;}
    public Integer b {get;set;}
    public Integer result {get;set;}
     public Boolean isDisp {get;set;}
    
    public ClaculatorCtrl(){
        isDisp=false;
    }
    
    public void addition(){
	System.debug('I am inside the add method');
       result=a+b; isDisp=true;
    System.debug('result= '+result);
    }
    
    public void subtraction(){
	System.debug('I am inside the sub method');
       result=a-b; isDisp=true;
    System.debug('result= '+result);
    }
    
    public void multipication(){
	System.debug('I am inside the multi method');
       result=a*b; isDisp=true;
    System.debug('result= '+result);
    }
    
    public void division(){
	System.debug('I am inside the div method');
       result=a/b; isDisp=true;
    System.debug('result= '+result);
    }
    
}