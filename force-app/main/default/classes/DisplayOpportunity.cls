public class DisplayOpportunity {

    @AuraEnabled
    public static Id insertOpportunity(Opportunity oppList){
		System.debug(oppList);
        insert oppList;
        return oppList.Id;
    }
}