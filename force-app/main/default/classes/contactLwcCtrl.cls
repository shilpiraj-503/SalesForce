public class contactLwcCtrl {

@AuraEnabled(cacheable=true)
public static List<Contact> getContactRecords(String name){
    name=name+'%';
    List<Contact> conList=[SELECT Name,FirstName,LastName,Phone,Email
                            FROM contact   
                            WHERE LastName 
                            Like: name];
    return conList;
}
}