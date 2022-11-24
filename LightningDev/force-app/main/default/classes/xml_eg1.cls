public class xml_eg1 
{
    public string xmlstring  {get;set;}
    public xml_eg1()
    {
      dom.Document doc= new dom.Document();
        dom.XmlNode root= doc.createRootElement('student',null,null);
        dom.XmlNode name= root.addChildElement('Name',null,null);
        dom.XmlNode fname= name.addChildElement('FirstName',null,null);
        fname.addTextNode('Mohith');
        dom.XmlNode lname = name.addChildElement('LastName',null,null);
        lname.addTextNode('Sai');
        dom.XmlNode age= root.addChildElement('Age',null,null);
        age.addTextNode('25');
        dom.XmlNode city= root.addChildElement('Address',null,null);
        city.setAttribute('City', 'Machilipatnam');
        city.setAttribute('State', 'AP');
        city.setAttribute('Pin', '521001');
      
        
        xmlstring =doc.toXmlString();
        
    }
}