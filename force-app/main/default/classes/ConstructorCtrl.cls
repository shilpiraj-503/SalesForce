public class ConstructorCtrl {
    
    public String empName {get;set;}
    public String empEmail {get;set;}
    
    /*
		get :: if you want to get the value in VF page
		set :: if you want to set the value in Vf page
	*/
    
    public ConstructorCtrl(){
        empName='Shilpi';
        empEmail='shilpi@gmail.com';
        System.debug('I am inside the constructor');
        System.debug('Employee Name: '+empName);
        System.debug('Employee Email: '+empEmail);
    }
    
    public void firstMethod(){
        empName='Raj';
        empEmail='raj@gmail.com';
        System.debug('I am inside the constructor');
        System.debug('Employee Name: '+empName);
        System.debug('Employee Email: '+empEmail);
        
    }
}