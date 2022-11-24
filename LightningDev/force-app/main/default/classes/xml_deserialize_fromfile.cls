public class xml_deserialize_fromfile 
{
    public blob xmlfile {set;get;}
    public string msg {get;set;}
    public void callme()
    {
        list<Account> Accounts=new list<Account>();
        string xmlstring= xmlfile.toString();
        xmlfile=null;
        
        dom.Document doc= new dom.Document();
        doc.load(xmlstring);
        dom.XmlNode root= doc.getRootElement();
        list<dom.XmlNode> child= root.getChildElements();
        for(dom.XmlNode ec:child)
        {
            Account A= new Account();
            A.Name= ec.getAttributeValue('Name', Null);
            A.Phone= ec.getAttributeValue('Phone', null);
            A.Industry= ec.getAttributeValue('Company Type', null);
            accounts.add(A);
        }
        try
        {
            insert accounts;
        }
        catch(exception E)
        {
            msg='Account creation failed'+E.getMessage();
        }
    }
}