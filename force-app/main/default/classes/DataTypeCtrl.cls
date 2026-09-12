public class DataTypeCtrl {
    public String name {get;set;}
    public Integer age {get;set;}
    public Double exp {get;set;}
    public Decimal sal {get;set;}
    public Boolean isExp {get;set;}
    public Date dob {get;set;}
    public Integer dob1 {get;set;}
    public DateTime regtm {get;set;}
    
    public DataTypeCtrl(){
    name= 'shilpi';
    age=22;
    exp=3.5;
    sal=100000;
    isExp=true;
    dob=Date.newInstance(2000,9,2);
    dob1=dob.dayOfYear();
    regtm=System.now();
    System.debug('Employee Name= '+name);
    System.debug('Employee Age= '+age);
    System.debug('Employee Exp= '+exp);
    System.debug('Employee sal= '+sal);
    System.debug('Employee isExp= '+isExp);
    System.debug('Employee dob= '+dob);
        System.debug('Employee dob= '+dob1);
    System.debug('Employee regtm= '+regtm);
    }
}