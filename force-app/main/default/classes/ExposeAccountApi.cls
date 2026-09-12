@RestResource(urlmapping='/getAccounts/*')
global class ExposeAccountApi {
	@HttpGet
    global static List<Account> getAccounts(){
        List<Account> listAccount= [SELECT Id, Name, Phone, Industry, Rating 
                                   FROM Account 
                                    LIMIT 5];
        return listAccount;
    }
    @HttpPost
    global static String createContact(String fName,String lName,String email){
        Contact con=new Contact();
        con.FirstName=fName;
        con.LastName=lName;
        con.Email=email;
        insert con;
        return 'Contact inserted successfully!.... Here is the ID : '+con.Id;
    }
}