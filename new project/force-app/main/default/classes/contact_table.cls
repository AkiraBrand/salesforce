public with sharing class contact_table {

    public Contact[] contacts{get; private set;}
    public String firstname{get; set;}
    public String lastname{get; set;}
    public String accountname{get; set;}
    public String title{get; set;}

    public contact_table() {
      contacts = [select id, name, firstname, lastname, title, phone, email, account.name from contact];
    }

    public void filter() {
       contacts = database.query('select id, name, firstname, lastname, title, phone, email, account.name' 
                  + ' from contact'
                  + queryFilter());
    }

    public String queryFilter() {
        String[] filters = new String[]{};
        if(String.isnotblank(firstname))
          {filters.add('firstname = :firstname');}
        if(String.isnotblank(lastname))
          {filters.add('lastname = :lastname');}
        if(String.isnotblank(accountname))
          {filters.add('account.name like \'%' + accountname + '%\'');}
        if(String.isnotblank(title))
          {filters.add('title = :title');}

        // String query = '';
        // if(!filters.isempty()){
        //   query += ' where ';
        //   query += String.join(filters, ' and ');
        // }
        // return query;
        //turnary statement below - returns one of two values based on the condition on the left
        //if the statement is true, the left side of the colon is what gets returned (the empty string)
        //otherwise the stuff on the right of the colon is returned
        string query =  filters.isempty() ? '' : ' where ' + String.join(filters, ' and ');
        system.debug(query);
        return query;
    }
}
