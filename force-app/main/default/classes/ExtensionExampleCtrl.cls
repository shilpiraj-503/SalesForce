public class ExtensionExampleCtrl {
	
    public List<Lead> leadList {get;set;}
    
    public ExtensionExampleCtrl(ApexPages.StandardController sc){
        leadList = [SELECT Name,LastName,LeadSource,Company
                   FROM Lead
                   LIMIT 10];
        
	}
    
}