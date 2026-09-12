public class SOQL_Example {
	public List<Account> accList;
    
    //public SOQL_Example{
        
    //}
    public void firstMethod(){
        accList=[Select Name,Type,Rating,Industry,AnnualRevenue 
                 FROM account];
        System.debug('Total Account Records:: '+accList.size());
        //System.debug('Account Records:: '+accList); 
        
        for(Account acc : accList){
            System.debug('Account Name '+acc.Name);
            System.debug('Account Type '+acc.Type);
            System.debug('Account Rating '+acc.Rating);
            System.debug('Account Industry '+acc.Industry);
            System.debug('Account AnnualRevenue '+acc.AnnualRevenue);
            System.debug('\n');
        }
    }
}