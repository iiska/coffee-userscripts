# ==UserScript==
# @name        Open My Reddits in tabs
# @namespace   http://xn--niemel-gua.fi/geasemonkey/my-reddit-tabs
# @description Add link which opens all "my reddits" in separate tabs.
# @include     http://www.reddit.com/*
# @require     http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js
# ==/UserScript==

open_all = ->
        $('.drop-choices a').not('.bottom-option').not('.gm-open').each(->
                window.open(@href))

$('.drop-choices.srdrop').prepend($('<a>')
        .text('Open all in tabs')
        .addClass('gm-open')
        .addClass('choice')
        .click(open_all))