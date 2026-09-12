public class SantaSpecial {
    public static void sendEmails(){
        List<Secret_Santa__c> obj=[SELECT Name__c,Name,emailsending__c 
                                   FROM Secret_Santa__c];
        List<String> emails=new List<String>();
        List<Messaging.Email> emailMessages=new List<Messaging.Email>();
        for(Secret_Santa__c ss:obj){
            Messaging.SingleEmailMessage msg=new Messaging.SingleEmailMessage();
            emails.add(ss.emailsending__c);
            msg.setToAddresses(emails);
            msg.SetSubject('Secret Santa - Digital Solutions');
            String body='hi! '+ss.Name+'your secret santa is '+ss.Name__c;
            msg.setHtmlBody(body);
            msg.setSenderDisplayName('DS TEAM');
            //msg.setFromAddress();
            //msg.setOrgWideEmailAddressId('0D25j0000004DnmCAE'); 
            emailMessages.add(msg);
        }
        System.debug(emailMessages);
       Messaging.sendEmail(emailMessages); 
    }
}