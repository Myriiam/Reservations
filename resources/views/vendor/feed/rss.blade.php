<?=
/* Using an echo tag here so the `<? ... ?>` won't get parsed as short tags */
'<?xml version="1.0" encoding="UTF-8"?>'.PHP_EOL
?>
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
    <channel>
        <atom:link href="{{ env('APP_URL') }}/feed" rel="self" type="application/rss+xml" />
        <title><![CDATA[{{ $meta['title'] }}]]></title>
        <link><![CDATA[{{ url($meta['link']) }}]]></link>
@if(!empty($meta['image']))
        <image>
            <url>{{ $meta['image'] }}</url>
            <title><![CDATA[{{ $meta['title'] }}]]></title>
            <link><![CDATA[{{ url($meta['link']) }}]]></link>
        </image>
@endif
        <description><![CDATA[{{$meta['description'] }}]]></description>
        <language>{{ $meta['language'] }}</language>
        <pubDate>{{ \Carbon\carbon::parse($meta['updated'])->format(DateTime::RFC822) }}</pubDate>

        @foreach($items as $item)
            <item>
                <title><![CDATA[{!! $item->title !!}]]></title>
                <link>{{ url($item->link) }}</link>
                <description><![CDATA[{!! $item->summary !!}]]></description>
                <author><![CDATA[{!! $item->authorName !!}]]></author>
                <guid>{{ url($item->id) }}</guid>
                <pubDate>{{ $item->updated->format(DateTime::RFC822) }}</pubDate>
                @foreach($item->category as $category)
                    <category>{{ $category }}</category>
                @endforeach
            </item>
        @endforeach
    </channel>
</rss>
