import { LightningElement } from 'lwc';

export default class Lwc_event_programparent extends LightningElement 
{
    ctrl='awaiting'
    val=0;
    constructor(){
        super();
        this.template.addEventListener('notifyinc',this.handleincrease.bind(this));
        this.template.addEventListener('notifydec',this.handledecrease.bind(this));

    }

    handleincrease(event)
    {
        //  alert('increase button was clicked');
        this.ctrl = event.detail;
        if(this.val>=0 && this.val<100)
        {
            this.val=this.val+1;
        }
    }
    handledecrease(event)
    {
        // alert('decrease button was clicked');
        this.ctrl=event.detail;
        if(this.val >0 && this.val<=100)
        {
            this.val=this.val-1;
        }
    }
}