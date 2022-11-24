import { LightningElement } from 'lwc';

export default class Myfirstcomp extends LightningElement {

    name='mohith';
    inme(event)
    {
        this.name=event.target.value;
    }
}