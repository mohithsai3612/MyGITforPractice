import { LightningElement } from 'lwc';

export default class Conditionalbind extends LightningElement 
{
    myvalue='Hi Mohith';
    showme=false;
    handlechange(event)
    {
        this.showme=event.target.checked;
    }
}