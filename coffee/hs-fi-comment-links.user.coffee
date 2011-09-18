# ==UserScript==
# @name          HS.fi comment links
# @namespace     http://xn--niemel-gua.fi/greasemonkey
# @description	 Allow easy linking to individual comments at HS.fi site
# @include       http://www.hs.fi/keskustelu/*
# @require       http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js
# ==/UserScript==

$('li.item.post').each((i, index) ->
        self = $(this)
        ref = self.find('div.recommend a').attr('name')
        stamp = $(self.find('p.author span.timePosted')[0])
        text = stamp.text()
        stamp.empty().append(
                $('<a>').attr('href','#'+ref)
                        .text(text))
        )