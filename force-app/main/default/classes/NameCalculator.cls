public class NameCalculator {
    public String fName {get;set;}
    public String sName {get;set;}
    public String result {get;set;}
    public Boolean isDisp {get;set;}
    
    public NameCalculator()
    {
        isDisp=false;
    }
    public void fullNameMethod(){
	System.debug('I am inside the method');
       result=fname+' '+sname;
    System.debug('result= '+result);
        isDisp=true;
    }
}