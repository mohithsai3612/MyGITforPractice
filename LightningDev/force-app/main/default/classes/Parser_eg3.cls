public class Parser_eg3 
{
    public string jstring;
    public void parser()
    {
        jstring='{"LastName":"sai","FirstName":"Mohith","Customer":{"Name":"wipro","Phone":"44444"},"salary":45000}';
         system.JSONParser jp = json.createParser(jString);
        while(jp.nextToken() != null)
        {
            if(jp.getText() == 'Customer')
            {
                jp.nextToken();
                Account Acc = (Account)jp.readValueAs(Account.class);
                insert Acc;
            }
           if(jp.getText() =='salary')
            {
               jp.nextToken();
                decimal sal =(decimal)jp.getDecimalValue();
                system.debug(sal);
            } 
            if(jp.getText()=='FirstName')
            {
                jp.nextToken();
                string empName=jp.getText();
                system.debug(empName);
            }
        }
    }
}