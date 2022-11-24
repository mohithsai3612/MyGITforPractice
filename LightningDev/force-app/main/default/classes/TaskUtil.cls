public class TaskUtil 
{
    public static string getTaskPriority(string leadstate){
        if(string.isBlank(leadstate)||leadstate.length()>2){
            return null;
        }
        string taskpriority;
        if(leadstate=='CA'){
            taskpriority='High';
        }
        else{
            taskpriority='Normal';
        }
        system.debug(taskpriority);
        return taskpriority;
    }
}