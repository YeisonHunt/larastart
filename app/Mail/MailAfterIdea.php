<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class MailAfterIdea extends Mailable
{
    use Queueable, SerializesModels;

 

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct()
    {
        
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {

        /*
        if ($case =='normal'){ //Nottificacion de idea normal

            return $this->view('emails.notifications.newIdea');

        }elseif ($case=='reto'){ // Notificacion de reto
            return $this->view('emails.notifications.newIdea');
        }
        
        else { // Notificacion de solucion
            return $this->view('emails.notifications.newIdea'); 
        } */

        return $this->view('emails.notifications.newIdea');

        
    }
}
