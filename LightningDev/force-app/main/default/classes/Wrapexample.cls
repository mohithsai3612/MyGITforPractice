public class Wrapexample 
{
	string Name;
    integer Age;
    Department ObjDepartment;
    
    public Wrapexample(string Name, integer Age, string Depot, integer salary){
       this.Name=Name;
        this.Age=Age;
        objDepartment= new Department(Depot,salary);
    }
    
    
    public class Department{
        string Depot;
        integer salary;
        
        public Department(string Depot, integer salary){
            this.Depot=Depot;
            this.salary=salary;
        }
    
    
    
    }
    
    
}