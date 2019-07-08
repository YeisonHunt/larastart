<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Stripe, Mailgun, SparkPost and others. This file provides a sane
    | default location for this type of information, allowing packages
    | to have a conventional place to find your various credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
        'endpoint' => env('MAILGUN_ENDPOINT', 'api.mailgun.net'),
    ],

    'postmark' => [
        'token' => env('POSTMARK_TOKEN'),
    ],

    'ses' => [
        'key' => env('AWS_ACCESS_KEY_ID'),
        'secret' => env('AWS_SECRET_ACCESS_KEY'),
        'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),
    ],

    'sparkpost' => [
        'secret' => env('SPARKPOST_SECRET'),
    ],

    'stripe' => [
        'model' => App\User::class,
        'key' => env('STRIPE_KEY'),
        'secret' => env('STRIPE_SECRET'),
        'webhook' => [
            'secret' => env('STRIPE_WEBHOOK_SECRET'),
            'tolerance' => env('STRIPE_WEBHOOK_TOLERANCE', 300),
        ],
    ],

    'github' => [
        'client_id' => 'Iv1.68c937477473a8a5',
        'client_secret' => 'da69cdc9132ae55bed9c96377b606364b11d53c3',
        'redirect' => 'https://guardproject.com/login/github/callback',
    ],

    'linkedin' => [
        'client_id' => '78ciyd5c9nhtwm',
        'client_secret' => 'EXc3ecz2EeeBxmT9',
        'redirect' => 'https://guardproject.com/linkedin/callback',
    ],

    'google' => [
        'client_id' =>  '1077415976370-j7bt6us6qv6n5td3ov76ksrjgi86ptqd.apps.googleusercontent.com',
        'client_secret' => 'SJ2lUCoBrL1qN0T7Y8eAPLlN',
        'redirect' => 'https://guardproject.com/google/callback',
    ],

];
