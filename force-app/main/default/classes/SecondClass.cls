public class SecondClass {
	public static String companyName='Ecolab';//global 
    public void firstMethod(){
        System.debug('First Method!');
        String empName='Shilpi Raj';//local
        String empPhone='546788978';
        System.debug('Company Name: '+companyName);
        System.debug('Employee Name: '+empName);
        System.debug('Employee Phone: '+empPhone);
    
    }
    public static void secondMethod(){
        System.debug('Second Method!');
        String empName='Raj';//local
        String empPhone='5345678890';
        System.debug('Company Name: '+companyName);
        System.debug('Employee Name: '+empName);
        System.debug('Employee Phone: '+empPhone);
    }
}