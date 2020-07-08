public with sharing class ContactsHandler {

    public static void setNumberOfContacts(Contact[] contacts){
        set<id> accountids = accountids(contacts);
        aggregateresult[] results = 
        [Select count(ID), AccountID FROM Contact WHERE AccountID IN :accountids GROUP BY AccountID];
    }

    private static set<id> accountids(Contact[] contacts){
        set<id> accountids = new set<id>();
        //right is collection we're iterating over
        //left is type and the thing ... itself?
        for(Contact contact : contacts){
            if(contact.accountid != null){
                accountids.add(contact.accountid);}
        }
            return accountids;
    }

}
