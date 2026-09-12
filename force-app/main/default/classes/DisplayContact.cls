public class DisplayContact {
	public List<Contact> contactList;
    public void firstMethod(){
        contactList=[SELECT FirstName,LastName,Phone,Email 
                     FROM Contact];
        
        Opportunity opp = [SELECT Name,StageName,CloseDate 
                          FROM Opportunity
                          LIMIT 1];
        System.debug('Total contact Records:: '+contactList.size());
        System.debug('Opportunity Records:: \n'+opp);
        for(Contact cont : contactList){
            System.debug('Contact LastName '+cont.LastName);
            System.debug('Contact LastName '+cont.LastName);
            System.debug('Contact Phone '+cont.Phone);
            System.debug('Contact Email '+cont.Email);
            
            System.debug('\n');
        }
        System.debug('Total Account Records:: '+opp);
    }
}