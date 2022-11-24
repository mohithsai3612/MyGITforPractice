import { LightningElement } from 'lwc';

export default class Event_program_parent extends LightningElement 
{
    calldeclare(event)
    {
        const nm = event.detail;
        alert('hi'+ nm);
    }


    //handling programatically

    constructor()
    {
        super();
        this.template.addEventListener('proevent',this.handleNotification);
    }
    handleNotification(event)
    {
        const nm = event.detail;
        alert('bye'+ nm);
    }
}