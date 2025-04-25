<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class TourSuggestionMail extends Mailable
{
    use Queueable, SerializesModels;

    /** @var array A javaslat adatai */
    public array $data;

    /**
     * Create a new message instance.
     *
     * @param  array  $data  A TourSuggestionController-ből érkező adatok
     */
    public function __construct(array $data)
    {
        $this->data = $data;
    }

    /**
     * Get the message envelope.
     */
    public function envelope(): Envelope
    {
        return new Envelope(
            subject: 'Új túra javaslat érkezett',
        );
    }

    /**
     * Get the message content definition.
     */
    public function content(): Content
    {
        return new Content(
            
            view: 'emails.tour_suggestion',
            with: [
                'data' => $this->data,
            ],
        );
    }

    /**
     * Get the attachments for the message.
     *
     
     *
     * @return array<int,
     */
    public function attachments(): array
    {
        return [];
    }
}