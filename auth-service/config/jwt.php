<?php

return [
    'secret' => env('JWT_SECRET'),

    'ttl' => 60,
    'algo' => 'HS256',

    'user' => 'App\\Models\\User',
    'identifier' => 'id',

    'required_claims' => ['iss', 'iat', 'exp', 'nbf', 'sub', 'jti'],

    'blacklist_enabled' => false,
];
