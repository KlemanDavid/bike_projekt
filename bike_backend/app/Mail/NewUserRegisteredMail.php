<?php

namespace App\Mail;

use App\Models\User;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class NewUserRegisteredMail extends Mailable
{
    use Queueable, SerializesModels;

    /** @var \App\Models\User */
    public User $user;

    /**
     * Create a new message instance.
     *
     * @param  \App\Models\User  $user
     */
    public function __construct(User $user)
    {
        $this->user = $user;
    }

    /**
     * Build the message.
     */
    public function build()
    {
        return $this
            ->subject('Új felhasználó regisztrált: ' . $this->user->username)
            ->markdown('emails.registration.admin_notification')
            ->with([
                'name'     => $this->user->name,
                'username' => $this->user->username,
                'email'    => $this->user->email,
            ]);
    }
}