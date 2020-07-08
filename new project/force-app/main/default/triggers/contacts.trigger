trigger contacts on Contact (after insert, after update, after delete, after undelete) {
    if(Trigger.isBefore){
      if(Trigger.isInsert){}
      else if(Trigger.isUpdate){}
      else if(Trigger.isDelete){}
      else if(Trigger.isUndelete){} 
    }
    else if(Trigger.isAfter){
      if(Trigger.isInsert){ContactsHandler.setNumberOfContacts(trigger.new);}
      else if(Trigger.isUpdate){}
      else if(Trigger.isDelete){}
      else if(Trigger.isUndelete){}
   }

}