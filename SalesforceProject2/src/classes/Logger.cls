public class Logger {
integer x = 10;
integer y = 12;
 @AuraEnabled
    public static List<Contact> getContacts(String search){
        search = '%'+search+'%' ;
        return [SELECT Name FROM Contact WHERE Name LIKE :search LIMIT 10] ;
    }
}