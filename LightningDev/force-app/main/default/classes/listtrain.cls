public class listtrain 
{
    public list<SelectOption> options {get;set;}
    public listtrain(){
        options=new list<SelectOption>();
        SelectOption n=new SelectOption('none','-none-');
        SelectOption h=new SelectOption('Hyd','TG');
        options.add(n);
        options.add(h);
    }
}