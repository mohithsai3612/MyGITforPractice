public class Contactemailphone 
{
    public static void valemph(list<contact> C) 
    {
        for(contact EC:C)
        {
            if(EC.Phone== NULL ||EC.Phone=='')
            {
                EC.Phone='9999999';
            }
            IF(EC.Email== NULL ||EC.Email=='')
            {
                EC.Email='NO@GMAIL.COM';
            }
        }
    }
}