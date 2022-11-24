import { LightningElement } from 'lwc';
import pubsub from 'c/lwc_pubsub';
export default class Mysubscriber extends LightningElement 
{
    message;
    connectedCallback()
    {
        this.register();
    }

    register()
    {
        pubsub.register('eventnotify',this.handleevent.bind(this));
    }
    handleevent(messagefromevt)
    {
        this.message=messagefromevt ? JSON.stringify(messagefromevt,null,'\t'): 'no message payload'
    }
}