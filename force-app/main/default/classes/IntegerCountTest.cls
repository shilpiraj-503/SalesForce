@isTest(seeAllData=true) //accessing all databases data
public class IntegerCountTest {
    
   
	@isTest
    public static void firstMethod(){
        
        Integer count=[SELECT Count() FROM Account];
        System.assertEquals(8,count);
        
        IntegerCount obj=new IntegerCount();
        Integer countTest=obj.count;
        Integer isNumTest=IntegerCount.isNum;
        String str=IntegerCount.countMethod();
        
        String str1=obj.emailMethod();
    }
}