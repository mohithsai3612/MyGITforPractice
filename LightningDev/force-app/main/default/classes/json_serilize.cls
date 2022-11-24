public class json_serilize 
{
    public string Name;
    public integer phone;
    public date Dob;
    public static void serialize()
    {
        json_serilize j = new json_serilize();
j.Name='Mohith';
j.Phone=55555;
system.debug(j);

string js1= json.serialize(j);
    system.debug('js1' + js1);
string js2= json.serialize(j, true);
system.debug('js2'+ js2);

string js3= json.serializePretty(j);
system.debug('js3 '+ js3);

string js4= json.serializePretty(j, true);
system.debug('js4 '+ js4);
    }
}