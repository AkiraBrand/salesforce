public with sharing class contact_table {
    public contact_table() {

    }

    public contact[] getContacts(){
        return [select id, firstname, lastname, title, phone, email, account.name from contact];
    }
}
