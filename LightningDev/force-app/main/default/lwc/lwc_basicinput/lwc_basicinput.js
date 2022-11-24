import { LightningElement } from 'lwc';

export default class Lwc_basicinput extends LightningElement 
{
    graternum=0;

    num1;
    num2;
    num3;


    fn(event)
    {
     this.num1=event.target.value;
    }

    sn(event)
    {
        this.num2=event.target.value;

    }

    tn(event)
    {
        this.num3=event.target.value;

    }

    clickme(event)
    {
        this.num1=parseInt(this.num1);
        this.num2=parseInt(this.num2);
        this.num3=parseInt(this.num3);
       if(this.num1>this.num2 && this.num1>this.num3)
       {
           alert('The greater Number is'+this.num1);
           this.graternum=this.num1
       }
       else if(this.num2>this.num1 && this.num2>this.num3)
       {
           alert('The greater Number is'+this.num2);
           this.graternum=this.num2
       }
       else
       {
           alert('The greater Number is'+this.num3);
           this.graternum=this.num3
       }
    }
}