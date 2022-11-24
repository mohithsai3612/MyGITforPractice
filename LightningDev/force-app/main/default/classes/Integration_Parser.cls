public class Integration_Parser 
{
    public string jsonstring {set;get;}
    public map<string,Object> result {set;get;}
    public Integration_Parser()
  {
      result = new map<string,Object> ();
      jsonstring = '{"Name":"Mohith","Marks":[10,20,30],"City":"Machilipatnam"}' ;
      system.JSONParser jp = json.createParser(jsonstring);
      while(jp.nextToken()!= null)
      {
        result.put(jp.getText(), jp.getCurrentToken());  
      }
  }
}