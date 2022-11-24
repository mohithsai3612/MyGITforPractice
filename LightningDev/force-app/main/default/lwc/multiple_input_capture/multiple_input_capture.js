import { LightningElement } from 'lwc';

export default class Multiple_input_capture extends LightningElement 
{
    fullname;
    Email;
    Phone;
    
    fn(event)
    {
        this.fullname=event.target.value;
    }
    em(event)
    {
        this.Email=event.target.value;
    }
    ph(event)
    {
       this.Phone=event.target.value 
    }
        get uppercase()
        {
            return `${this.fullname}`.toUpperCase();
        }

}