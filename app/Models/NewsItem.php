<?php

namespace App\Models;

use Spatie\Feed\Feedable;
use Spatie\Feed\FeedItem;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Carbon;

class NewsItem extends Show implements Feedable
{
    public function toFeedItem(): FeedItem
    {
        return FeedItem::create()
            ->id($this->id)
            ->title($this->title)
            ->summary(htmlEntities(substr($this->description, 0, 60)))
            ->updated(Carbon::parse($this->updated_at ?? $this->created_at))
            ->link(env('APP_URL')."/reservations/show/{$this->id}")
            ->authorName(env('APP_CONTACT'));
    }

    public function getFeedItems()
    {
        return NewsItem::orderByDesc('created_at')->take(6)->get();
    }
}
