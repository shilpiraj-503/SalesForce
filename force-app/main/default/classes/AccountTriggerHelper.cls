public class AccountTriggerHelper {
    //static type of method

    public static void beforeInsertMethod(List<Account> aList){
		//logic
		for(Account acc: aList){
            if(acc.Type=='Prospect'){
                acc.Ownership='Public';
                acc.Rating='Hot';
                acc.Active__c='Yes';
            }else
            {
                acc.Ownership='Private';
                acc.Rating='Cold';
                acc.Active__c='No';
            }
            
        }
    }
    public static void afterInsert(List<Account> aList){
        List<Contact> conList=new List<Contact>();
        for(Account acc:aList){
            Contact con=new Contact();
            con.AccountId=acc.Id;
            con.LastName=acc.Name;
            con.Phone=acc.Phone;
            con.Description=acc.Description;
            conList.add(con);
        }
        insert conList;
    }
    public static void afterInsertOpp(List<Account> aList){
        List<Opportunity> oppList=new List<Opportunity>();
        for(Account acc:aList){
            Opportunity opp=new Opportunity();
            opp.AccountId=acc.Id;
            opp.Name=acc.Name;
            opp.closeDate=System.TODAY()+7;
            opp.StageName='Prospect';
            oppList.add(opp);
        }
        insert oppList;
    }
    public static void updateMethod(List<Account> aList,List<Account> oList){
        for(Account old: aList){
            for(Account acc: oList){
                if(acc.Id==old.Id && acc.Name!=old.Name){
                    old.addError('You can not modify the account name.');
                }
            }
        }
    }
     public static void updateMethod2(List<Account> aList,Map<Id,Account> oMap){
       
            for(Account acc: aList){
                if(acc.Phone!=oMap.get(acc.Id).Phone){
                    acc.Description=acc.Phone+' was modified to '+ oMap.get(acc.Id).Phone;
                }
            }
        
    }
    public static void afterMethod(Map<Id,Account> nMap,Map<Id,Account> oMap){
        for(Account acc: nMap.values()){
                if(acc.Phone!=oMap.get(acc.Id).Phone){
                   // acc.Description=acc.Phone+' was modified to '+ oMap.get(acc.Id).Phone;
                    //Contact con=new Contact();
                    //con.AccountId=acc.Id;
                    //con.Phone=acc.Phone;
                    //conList.add(con);
                    List<Contact> conList;
                    conList=[SELECT Phone FROM Contact WHERE AccountId=: acc.Id];
                    for(Contact con:conList)
                    {
                        con.Phone=acc.Phone;
                    }
                    update conList;
                }
            }
         }
    
    public static void afterMethod2(List<Account> nMap,Map<Id,Account> oMap){
        Set<Id> accIds=new Set<Id>();
        for(Account acc:nMap){
                if(acc.Phone!=oMap.get(acc.Id).Phone){
                   accIds.add(acc.Id);
                }
            }
        List<Contact> conList=[SELECT Name,Phone,Account.Phone FROM Contact WHERE AccountId IN: accIds];
        for(Contact con:conList)
                    {
                        con.Phone=con.Account.Phone;
                    }
        update conList;
       }
    
    public static void deleteAccount(List<Account> OldList){
        /*for(Account acc: oldList){
            if(acc.Active__c=='Yes'){
                acc.addError('Account cannot be deleted!');
            }
        }*/
    }
    public static void deleteAccountMail(List<Account> oldList){
       List<Messaging.Email> emailMessage=new List<Messaging.Email>();
       
        for(Account acc: oldList){
            
            Messaging.SingleEmailMessage msg=new Messaging.SingleEmailMessage();
            List<String> toadd=new List<String>();
            toadd.add('garf8800@gmail.com');
            //toadd.add(acc.Owner.Email);
            msg.setToAddresses(toadd);
            msg.setSubject('SDFC Training ');
            String body='Hi User <br/>';
            body=body+'Record of '+acc.Id+' with thwe name '+acc.Name+' was deleted!';
            body=body+'<br/>'+'Thanks & Regards ';
            msg.setHtmlBody(body);
            emailMessage.add(msg);
        }
        Messaging.sendEmail(emailMessage);
        
    }
    
    public static void duplicateName(List<Account> newList){
        for(Account acc:newList){
            List<Account> nameSame=[SELECT Name,Type FROM Account 
                                   WHERE Name =: acc.Name
                                   AND Id !=: acc.Id];
            if(nameSame.size()!=0)
            {
                acc.addError('Duplicate Name! Cannot be altered!');
            }
            
        }
    }
    
}