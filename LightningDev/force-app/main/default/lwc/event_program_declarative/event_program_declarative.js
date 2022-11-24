import { LightningElement } from 'lwc';

export default class Event_program_declarative extends LightningElement 
{
    callme(event)
    {
        this.dispatchEvent(new CustomEvent('proevent',{detail:'mohith', bubbles:true, composed:true}));
    }

}