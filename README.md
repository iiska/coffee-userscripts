A simple hack to enable writing
[Greasemonkey](https://addons.mozilla.org/en-US/firefox/addon/greasemonkey/)
userscripts with
[CoffeeScript](http://jashkenas.github.com/coffee-script/).

Rake task will be used to compile scripts in ./coffee directory and
created Javascript files are placed in ./js. Rake show task can be
utilized to view compiled scripts in Firefox to allow easier
installing.

## Usage

    bundle install

Put some scripts into coffee directory and execute rake task.

    rake build

Open scripts directory in browser

    rake show

Create new userscript file with template comment block at the beginning.

    rake new[new-file-name-without-extension]

