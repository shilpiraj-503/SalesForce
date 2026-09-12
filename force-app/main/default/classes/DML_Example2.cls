public class DML_Example2 {
    public void firstMethod(){
        
        List<Account> accList=new List<Account>();
		Account acc1=new Account();
        accList.add(acc1); // invalid acc1
        
        Account acc2=new Account();
        acc2.Name='ACC2';
        accList.add(acc2);
        
        Account acc3=new Account();
        acc3.Name='ACC3';
        accList.add(acc3);
        
        Account acc4=new Account();
        acc4.Name='ACC4';
        accList.add(acc4);
        
        //insert accList; // DML EXCEPTION POPS UP DUE TO INVALID ACC1
        DataBase.insert(accList,false);
        
    }
}