public class Cl_3101_eg2_comparision 
{
public list <cl_3101_eg2_student> osl;
public list <cl_3101_eg2_student> asl;
    public void mastercomparision()
    {
       createosstudentlist();
       createasstudentlist();
        for(cl_3101_eg2_student eos:osl)
        {
            for(cl_3101_eg2_student eas:asl)
            {
                if(eos.name==eas.name && eos.phone==eas.phone)
                {
                    system.debug('Duplicate found>>> student with name'+ eos.name+'phone number'+eos.phone+'taken admission in OS');
                }
            }
        }
    }
list<cl_3101_eg2_student> createosstudentlist()
{
   osl=new list<cl_3101_eg2_student>();
    
    cl_3101_eg2_student os1=new cl_3101_eg2_student();
    os1.Rollno =201;
    os1.name='ravi';
    os1.phone=2222;
    os1.subject='Bsc maths';
    
    cl_3101_eg2_student os2=new cl_3101_eg2_student();
    os2.Rollno =202;
    os2.name='swathi';
    os2.phone=3333;
    os2.subject='Bsc computers';
    
    cl_3101_eg2_student os3=new cl_3101_eg2_student();
    os3.Rollno =203;
    os3.name='malani';
    os3.phone=4444;
    os3.subject='BCOM';
    
    cl_3101_eg2_student os4=new cl_3101_eg2_student();
    os4.Rollno =204;
    os4.name='mahesh';
    os4.phone=5555;
    os4.subject='BA';
    
    osl.add(os1);
    osl.add(os2);
    osl.add(os3);
    osl.add(os4);
    
    return osl;
}
list<cl_3101_eg2_student> createasstudentlist()
{
    asl=new list<cl_3101_eg2_student>();
    cl_3101_eg2_student as1=new cl_3101_eg2_student();
       as1.Rollno =501;
    as1.name='malani';
    as1.phone=4444;
    as1.subject='BA';
    
    cl_3101_eg2_student as2=new cl_3101_eg2_student();
    as2.Rollno =502;
    as2.name='ravi';
    as2.phone=5656;
    as2.subject='BCOM';
    
    cl_3101_eg2_student as3=new cl_3101_eg2_student();
    as3.Rollno =506;
    as3.name='Daniel';
    as3.phone=2222;
    as3.subject='Bsc computers';
    
    cl_3101_eg2_student as4=new cl_3101_eg2_student();
    as4.Rollno =505;
    as4.name='rafhi';
    as4.phone=4454;
    as4.subject='Bsc maths';
    
    asl.add(as1);
    asl.add(as2);
    asl.add(as3);
    asl.add(as4);
    
    return asl;
}
    
}