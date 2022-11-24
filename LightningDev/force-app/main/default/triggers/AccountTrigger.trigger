trigger AccountTrigger on Account (before Insert,after Insert,before Update,after Update) 
{
    if(Trigger.isBefore && Trigger.isInsert)
  {
      for(Account Ac:Trigger.new)
      {
          if(Ac.ShippingCity==null)
              Ac.ShippingCity=Ac.BillingCity;
          if(Ac.ShippingCountry==null)
              Ac.ShippingCountry=Ac.BillingCountry;
          if(Ac.ShippingStreet==null)
              Ac.ShippingStreet=Ac.BillingStreet;
          if(Ac.ShippingPostalCode==null)
              Ac.ShippingPostalCode=Ac.BillingPostalCode;
          system.debug('updatedfields');
      }
  }
    
    if(trigger.isBefore && trigger.isUpdate)
    {
        system.debug('newvalues');
        system.debug(trigger.new);
        system.debug(trigger.newmap);
        system.debug('oldvalues');
        system.debug(trigger.old);
        system.debug(trigger.oldmap);
        
        for(Account accRecNew:trigger.new){
            Account accRecOld= trigger.oldMap.get(accRecNew.Id);
            if(accRecNew.Name != accRecOld.Name)
                accRecNew.addError('No Changes are needed');
        }
        
    }
    if(trigger.isafter && trigger.isupdate)
    {
        set<Id> accsetforchangedbillingaddress=new set<Id>();
        for(Account accrecnew:trigger.new)
        {
            Account accrecold= trigger.oldMap.get(accrecnew.Id);
            if(accrecnew.BillingStreet!=accrecold.BillingStreet)
             accsetforchangedbillingaddress.add(accrecnew.Id);       
        }
        list<Account> acclist=[select Id,Name,BillingStreet,BillingCity,BillingCountry,(select Id,Name from contacts)from Account where ID in:accsetforchangedbillingaddress];
        list<Contact> conlist= new list<Contact>();
        
        for(Account acc:acclist){
            list<Contact> conlistloop=acc.Contacts;
            for(Contact con:conlistloop){
                con.MailingStreet=acc.BillingStreet;
                con.MailingCountry=acc.BillingCountry;
                con.MailingCity=acc.BillingCity;
                conlist.add(con);
            }
            if(conlist.size()>0){
                update conlist;
            }
        }
                
        
    }
    if(trigger.isAfter && trigger.isInsert){
            system.debug('forqueue');
            system.enqueueJob(new queuetrigger(trigger.new));
        }
  
}