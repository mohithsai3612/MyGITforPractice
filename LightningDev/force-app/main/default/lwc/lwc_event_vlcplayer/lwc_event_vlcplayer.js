import { LightningElement } from 'lwc';

export default class Lwc_event_vlcplayer extends LightningElement 
{
    vol=0;
    Volume= 'Awaiting for click';

    increaseme(event)
    {
        this.Volume= event.detail;
       if(this.vol<100)
       {
           this.vol=this.vol+1;
       }
    }

    decreaseme(event)
    {
        this.Volume=event.detail;
      if(this.vol>0)
      {
          this.vol = this.vol-1;
      }
    }
}