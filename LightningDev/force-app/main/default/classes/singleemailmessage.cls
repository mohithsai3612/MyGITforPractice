public class singleemailmessage 
{
public void sendemail()
{
    //step 1 intilaize/call messaging namespace
    messaging.SingleEmailMessage SEM= new messaging.SingleEmailMessage();
    
    //step 2 prepare the data
    list<string> toadd= new list<string>{'mohithsaisfdc@gmail.com'};
        //step 3 compose the email
       SEM.setToAddresses(toadd);
       SEM.setSubject('single email message');
       SEM.setPlainTextBody('Hi this is salesforce single message email from salesforce so please ignore this email');
    
    //step 4 send email
    list<messaging.email> sndeml= new list<messaging.email>{SEM};
        MESSAGING.sendEmail(sndeml);
    
}
}