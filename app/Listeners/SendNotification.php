<?php

namespace App\Listeners;

use App\Events\MessageSend;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Support\Facades\Mail;

class SendNotification
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
     * @param  MessageSend  $event
     * @return void
     */
    public function handle(MessageSend $event)
    {
        $contact_message = $event->message;
        Mail::send('email.contact-message-notification', ['contact_message' => $contact_message], function($m) use ($contact_message){
            $m->from('info@laravel-udemy-course.com', 'Laravel Udemy Course');
            $m->to('admin@laravel-udemy-course.com', 'Laravel Udemy Course Admin');
            $m->subject('New contact message from: ' . $contact_message->email);
        });
    }
}
