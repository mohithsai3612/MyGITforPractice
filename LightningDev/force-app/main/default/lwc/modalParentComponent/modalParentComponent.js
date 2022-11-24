import { LightningElement } from 'lwc';

export default class ModalParentComponent extends LightningElement 
{
    showModal= false;
    showhandler(){
        this.showModal=true;
    }

    modalclosehandler(){
        this.showModal=false;
    }
}