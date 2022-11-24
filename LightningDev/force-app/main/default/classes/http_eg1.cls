public class http_eg1 
{
    public string ipaddress {get;set;}
    public string body {get;set;}
    public string status {get;set;}
    public map<string,object> res{get;set;}
    public string data {get;set;}
    public void calltrace()
    {
        res= new map<string,string> ();
        string endpoint = 'http://xml.utrace.de/?query='+ ipaddress;
        Http p = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(endpoint);
        request.setMethod('GET');
        
        HttpResponse response= p.send(request);
        body= response.getBody();
        
        
        dom.Document doc= new dom.Document();
        doc.load(body);
        dom.XmlNode root= doc.getRootElement();
        list<dom.XmlNode> result= root.getChildElements();
        dom.XmlNode parent= result[0];
        list<dom.XmlNode> data= parent.getChildElements();
        for(dom.XmlNode ed:data)
        {
         res.put(ed.getName(), ed.getText());  
        }
    }
}