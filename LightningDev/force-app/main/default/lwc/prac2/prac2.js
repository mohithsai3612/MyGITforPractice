import { LightningElement } from 'lwc';

export default class Prac2 extends LightningElement 
{
    name;
    write(event)
    {
        this.name=event.target.value;
    }
}