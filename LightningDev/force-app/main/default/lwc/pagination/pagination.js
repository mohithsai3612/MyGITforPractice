import { LightningElement, api } from 'lwc';

export default class Pagination extends LightningElement 
{
    totalrecords;
    recordsize=10;
    @api 
    
    get records(){
        return this.visiblerecords
    }
    set records(data){
        if(data){
            this.totalrecords=data;
            this.visiblerecords=data.slice(0, this.recordsize)
            this.totalpages= Math.ceil(data.length/this.recordsize)
            this.updaterecords()
        }
    }
    previoushandler()
    {

    }
    nexthandler()
    {
        
    }

    updaterecords(){
        this.dispatchEvent(new CustomEvent('update', {detail:{
            records:this.visiblerecords
        }}))
    }
}