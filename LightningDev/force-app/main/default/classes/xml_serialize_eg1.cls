public class xml_serialize_eg1 
{
    public string xmlstring {get;set;}
    
    public xml_serialize_eg1()
    {
        list<Account> acc=[select name,phone,industry,(select LastName,FirstName,Email from contacts WHERE FirstName !=null and Email !=null) from Account WHERE Phone!=null and Industry !=null LIMIT 5];
         dom.Document doc= new dom.Document ();
         dom.XmlNode root = doc.createRootElement('Accounts',null, null);
         for(Account EA:acc)
         {
            dom.XmlNode branch= root.addChildElement('Account',null,null);
             branch.setAttribute('Name', EA.Name);
             branch.setAttribute('Phone', EA.Phone);
             branch.setAttribute('Company Type', EA.Industry);
             if(EA.contacts.size()>0)
             {
              dom.XmlNode branch2= branch.addChildElement('contacts',null,null);
                 for(contact EC:EA.contacts)
                 {
                     dom.XmlNode twig = branch2.addChildElement('Contact',null,null);
                     twig.setAttribute('LastName', EC.LastName);
                     twig.setAttribute('FirstName', EC.FirstName);
                     twig.setAttribute('Email', EC.Email);
                 }
                  
             }
         }
        xmlstring= doc.toXmlString();

    }
}