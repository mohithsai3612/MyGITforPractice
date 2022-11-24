public class cl_Email_singleEmail 
{
public void SendEmail()
{
    //step1-->initailze/call the messaging namespace
    messaging.SingleEmailMessage SEM=new messaging.SingleEmailMessage();
    
    //step2--> prepare the data
    list<string> toadd=new list<string>{'saicharith479@gmail.com'};
        list<string> ccadd=new list<string>{'mohithsfdc001@gmail.com'};
            
            //step--> compose the mail
            SEM.setToAddresses(toadd);
    SEM.setCcAddresses(ccadd);
    SEM.setSubject('<b>Hi Good morning had your lunch<b/>');
    sem.setHtmlBody('<b>if not,go and take a break<b/>');
    
    //step4-->send email
    List<Messaging.Email> SEML=new List<Messaging.Email>{SEM};
    messaging.sendEmail(SEMl);
}
}