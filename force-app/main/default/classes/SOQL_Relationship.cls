public class SOQL_Relationship {

    public void queryMethod(){
        //parent to child : contact -> child, account-> parent
        List <Contact> conList=[SELECT FirstName,LastName,Phone,Email,Account.Name,Account.Type,Account.AnnualRevenue
                                FROM Contact];
        for(Contact con: conList){
            System.debug('FirstName :: '+con.FirstName);
            System.debug('LastName :: '+con.LastName);
            System.debug('Phone :: '+con.Phone);
            System.debug('Email :: '+con.Email);
            System.debug('Account Type :: '+con.Account.Type);
            System.debug('Account Name :: '+con.Account.Name);
            System.debug('Account Annual Revenue :: '+con.Account.AnnualRevenue);
            System.debug('\n');
        }
    }
    public void secondMethod(){
        List <Account> accList=[SELECT Name,Type,Rating,
                                (SELECT FirstName,LastName,Phone,Email
                                FROM Contacts)
                               FROM Account];
        for( Account acc: accList){
            System.debug('Name :: '+acc.Name);
            System.debug('Type :: '+acc.Type);
            System.debug('Account Rating :: '+acc.Rating);
            List <Contact> conList=acc.Contacts;
            
            for(Contact con: conList){
            System.debug('FirstName :: '+con.FirstName);
            System.debug('LastName :: '+con.LastName);
            System.debug('Phone :: '+con.Phone);
            System.debug('Email :: '+con.Email);
            }
             System.debug('\n');
        }
    }
}