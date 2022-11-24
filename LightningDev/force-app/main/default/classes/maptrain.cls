public class maptrain 
{
    public static void maptrains(){
        list<Opportunity> opplist=new list<Opportunity>();
        Opportunity op1=new Opportunity();
        op1.name='op1name';
        op1.stageName='prospecting';
        op1.closeDate=date.newInstance(2022, 11, 05);
        
        Opportunity op2=new Opportunity();
        op2.name='op2name';
        op2.stageName='prospecting';
        op2.closeDate=date.newInstance(2022, 11, 05);
        
        
        opplist.add(op1);
        opplist.add(op2);
    
        
        map<string,string> mapop=new map<string,string>();
        map<string,date> mapdate=new map<string,date>();
        
        for(Opportunity opp:opplist){
            mapop.put(opp.Name,opp.StageName);
            mapdate.put(opp.Name,opp.CloseDate);
        }
        system.debug(mapop);
        system.debug(mapdate);
        
        //fetch all opportunity names
        set<string> names=mapop.keySet();
        system.debug(names);
        
        //fetch all dates
        list<date> closeDates=mapdate.values();
        system.debug(closeDates);
        
        //fetch all stage
        list<string> stageNames=mapop.values();
        system.debug(stageNames);
        
    
    }
}