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

class InnovationCreated
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    public $idea;

    /**
     * Create a new event instance.
     *
     * @return void
     */
    public function __construct(Innovation $idea)
    {
        $this->idea = $idea;
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return \Illuminate\Broadcasting\Channel|array
     */
    public function broadcastOn()
    {
        return new PrivateChannel('new-innovation');
    }
}
