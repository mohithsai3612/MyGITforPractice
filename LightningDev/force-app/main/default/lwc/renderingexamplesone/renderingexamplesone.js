import { LightningElement } from 'lwc';

export default class Renderingexamplesone extends LightningElement 
{
    showtext=false;

    texthandler(){
        this.showtext=true;
    }

    hidedetails(){
        this.showtext=false;
    }


}