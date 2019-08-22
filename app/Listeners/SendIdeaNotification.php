<?php

namespace App\Listeners;

use App\Events\InnovationCreated;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class SendIdeaNotification
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  InnovationCreated  $event
     * @return void
     */
    public function handle(InnovationCreated $event)
    {
        //$event->idea
    }
}
