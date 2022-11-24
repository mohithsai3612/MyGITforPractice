import { LightningElement } from 'lwc';

export default class Lwc_event_decchild extends LightningElement 
{
    
    
    inceme(event)
    {
      this.dispatchEvent(new CustomEvent('notifyinc',{detail:'volume',bubbles:true,composed:true}));
    }

    deceme(event)
    {
        this.dispatchEvent(new CustomEvent('notifydec',{detail:'volume',bubbles:true,composed:true}));
    }


}