<?php

namespace App\Events;

use App\Innovation;

use Illuminate\Broadcasting\Channel;
use Illuminate\Queue\SerializesModels;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;

class InnovationCreated implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    //public $idea;

    /**
     * Create a new event instance.
     *
     * @return void
     */

     /*
    public function __construct(Innovation $idea)
    {
        $this->idea = $idea;
    } */

    public function __construct()
    {
       
    } 
        

    /**
     * Get the channels the event should broadcast on.
     *
     * @return \Illuminate\Broadcasting\Channel|array
     */
    public function broadcastOn()
    {
        return ['new-idea-channel'];
    }

    public function broadcastAs()
  {
      return 'InnovationCreated';
  }

   public function broadcastWith(){
       return ['message'=>'Real time babe'];
   }
}
