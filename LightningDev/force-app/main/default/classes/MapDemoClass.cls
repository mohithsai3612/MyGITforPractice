public class MapDemoClass {

    public void mymapmethod(){
     
        map<integer,string> intotmap=new map<integer,string>();
        intotmap.put(1,'a');
        intotmap.put(2,'b');
        intotmap.put(3,'c');
        system.debug('intotmap=>'+ intotmap);
        list<string> valstr=new list<string>();
        valstr=intotmap.values();
        system.debug('values=> '+valstr);
        
        list<account> acclist=[select ID,Name from Account limit 5];
        map<ID,Account> accmap=new map<ID,Account>(acclist);
        system.debug('accmap=>'+ accmap);
        
    }

}