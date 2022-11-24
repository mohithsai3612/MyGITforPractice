trigger Patient_creation on Patient__c (before insert, before delete,before update,after insert,after update,after delete,after undelete) 
{

    messaging.SingleEmailMessage te= new messaging.SingleEmailMessage();
    list<string> tad=new list<string>{'mohithsfdc001@gmail.com'};
        te.setToAddresses(tad);
    if(Trigger.isbefore && trigger.isinsert)
    {
     te.setSubject('Hi you are going to create Patient');
     te.setPlainTextBody('please check carefully');
     List<Messaging.Email> sem= new List<Messaging.Email>{te};
     messaging.sendEmail(sem);
    }
    if(trigger.isafter && trigger.isinsert)
    {
        te.setSubject('Hi you have successfully created Patient');
    te.setPlainTextBody('Thanks for creating');
    List<Messaging.Email> sem= new List<Messaging.Email>{te};
    messaging.sendEmail(sem);
    }
    if(trigger.isbefore && trigger.isupdate)
    {
        te.setSubject('Hi you are going update a Patient');
    te.setPlainTextBody('Thanks for upadting');
    List<Messaging.Email> sem= new List<Messaging.Email>{te};
    messaging.sendEmail(sem);
    }
    if(trigger.isafter && trigger.isupdate)
    {
        te.setSubject('Hi you have successfully updated Patient');
    te.setPlainTextBody('Thanks for Updating');
    List<Messaging.Email> sem= new List<Messaging.Email>{te};
    messaging.sendEmail(sem);
    }
    if(trigger.isbefore && trigger.isdelete)
    {
        te.setSubject('Hi you are going to delete Patient');
    te.setPlainTextBody('please check carefully');
    List<Messaging.Email> sem= new List<Messaging.Email>{te};
    messaging.sendEmail(sem);
    }
    if(trigger.isafter && trigger.isdelete)
        {
        te.setSubject('Hi you have successfully deleted Patient');
    te.setPlainTextBody('Thanks for deleting');
    List<Messaging.Email> sem= new List<Messaging.Email>{te};
    messaging.sendEmail(sem);
        }
}