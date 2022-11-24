import { LightningElement } from 'lwc';

export default class Prac1 extends LightningElement 
{
    nam;
    phn;
    num1;
    num2;
    num3;
    result=0;
    
    capnme(event)
    {
       this.nam= event.target.value;
    }
    capphe(event)
    {
       this.phn= event.target.value;
    }
    callme(event)
    {
        alert('hi this button is clicked')
    }

    fn(event)
    {
       this.num1= event.target.value;
    }
    sn(event)
    {
        this.num2=event.target.value;
    }
    tn(event)
    {
        this.num3=event.target.value;
    }
    calme(event)
    {
       this.num1=parseInt(this.num1);
       this.num2=parseInt(this.num2);
       this.num3=parseInt(this.num3);
       if(this.num1>this.num2 && this.num1>this.num3)
       {
        this.result=this.num1;
       }
       if(this.num2>this.num1 && this.num2>this.num3)
       {
        this.result=this.num2;
    
       }
       if(this.num3>this.num1 && this.num3>this.num2)
       {
        this.result=this.num3;
       }
    }
    clme(event)
    {
        this.num1=null;
        this.num2=null;
        this.num3=null;
        this.result=null;
    }

}