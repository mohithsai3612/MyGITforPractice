public class integration_parser_eg2 
{
    public string jsonstring {set;get;}
    public map<string,object> result {get;set;}
    public void integration_parser_eg2()
    {
        string nm;
        string ph;
        string fx;
        string rat;
        
        result = new map<string,object> ();
        jsonstring = '{"status":"success", "code":200, "Account":[{"name":"sai","phone":"565565","fax":"895959"},{"Name":"mohith","fax":"565985","rating":"hot"}]}';
    system.JSONParser jp= json.createParser(jsonString);
        while(jp.nextToken()!= null)
        {
         if(jp.getText()=='Name')
         {
             jp.nextToken();
             nm=jp.getText();
         }
            if(jp.getText()=='Phone')
         {
             jp.nextToken();
             ph=jp.getText();
         }
            if(jp.getText()=='fax')
         {
             jp.nextToken();
             fx=jp.getText();
         }
            if(jp.getText()=='rating')
         {
             jp.nextToken();
             rat=jp.getText();
         }
        }
        Account b = new Account();
        b.Name= nm;
        b.Phone= ph;
        b.Fax= fx;
        b.Rating= rat;
        insert b;
    }
}