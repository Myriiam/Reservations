<?php

return [
    'feeds' => [
        'main' => [
            /*
             * Here you can specify which class and method will return
             * the items that should appear in the feed. For example:
             * [App\Model::class, 'getAllFeedItems']
             *
             * You can also pass an argument to that method.  Note that their key must be the name of the parameter:             *
             * [App\Model::class, 'getAllFeedItems', 'parameterName' => 'argument']
             */
            'items' => 'App\Models\NewsItem@getFeedItems',

            /*
             * The feed will be available on this url.
             */
            'url' => '/feed',

            'title' => env('APP_NAME'),
            'description' => 'Liste des derniers spectacles sur Reservations.',
            'language' => 'fr-BE',
            'updated' => date("D, d M Y H:i:s O", time()),

            /*
             * The image to display for the feed.  For Atom feeds, this is displayed as
             * a banner/logo; for RSS and JSON feeds, it's displayed as an icon.
             * An empty value omits the image attribute from the feed.
             */
            //'image' => '',

            /*
             * The format of the feed.  Acceptable values are 'rss', 'atom', or 'json'.
             */
            'format' => 'rss',

            /*
             * The view that will render the feed.
             */
            'view' => 'feed::rss',

            /*
             * The mime type to be used in the <link> tag.  Set to an empty string to automatically
             * determine the correct value.
             */
            'type' => 'application/rss+xml',

            /*
             * The content type for the feed response.  Set to an empty string to automatically
             * determine the correct value.
             */
            'contentType' => '',
        ],
    ],
];
