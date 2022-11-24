import { LightningElement } from 'lwc';
import pubsub from 'c/lwc_pubsub';

export default class Mypublisher extends LightningElement 
{
    mymsg;
    
    msgme(event)
    {
        this.mymsg=event.target.value;
    }
    postme(event)
    {
        let message={
             'msg': this.mymsg,
             'sender Name':'Mohith sai',
             'from':'Machilipatnam'

        };

        pubsub.fire('eventnotify',message);
    }
    
}