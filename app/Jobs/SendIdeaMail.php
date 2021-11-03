<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use App\Mail\MailAfterIdea;
use Mail;

class SendIdeaMail implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $details;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($details)
    {
        $this->details= $details;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
       // $email = new MailAfterIdea();

        // Aqui debe ir el for

       // Mail::to($this->details['email'])->send($email);

       $dates = array('title'=>'asdasd','comentador'=>'asdasdasd','creador'=>'asdasdasd','comentario'=>'asdasd','idIdea'=>'asdasdasd');
       $this->sendMail($dates,$creador->email);


    }

    function sendMail($dates,$email)
    {
        Mail::send('emails.notifications.commentIdea',$dates, function($message) use ($email) 
        {
           $message->subject('Alguién comentó tu idea');
           $message->to($email);
           $message->from('support@asakaa.com','Probando bulk');
        });
    }
}
