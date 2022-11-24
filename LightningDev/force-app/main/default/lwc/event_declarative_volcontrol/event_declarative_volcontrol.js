import { LightningElement } from 'lwc';

export default class Event_declarative_volcontrol extends LightningElement 
{
    increasevol(event)
    {
     const incevt= new CustomEvent('increaseevent',{detail:'Volume UP'});  // creating event
     this.dispatchEvent(incevt);

    }

    decreasevol(event)
    {
      this.dispatchEvent(new CustomEvent('decreaseevent',{detail:'Volume Down'}));
         
    }
}