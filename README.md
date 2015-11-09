ZSH plugin for wakatime
=======================

Automatic time tracking for commands in ZSH using [wakatime](http://wakatime.com/).

Installation (OS X only)
------------

It depends on [zsh](http://www.zsh.org/) and [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh).

Also make sure you have configured wakatime via other wakatime plugins such as VIM, sublime etc.

1. `brew install wakatime-cli`

2. `cd ~/.oh-my-zsh/custom/plugins && git clone git@github.com:wbinglee/zsh-wakatime.git` or whatever how you manage your zsh plugins.

3. Edit your `.zshrc` file and add `zsh-wakatime` to oh-my-zsh plugins

4. Open a new terminal and type commands

5. Visit https://wakatime.com/project/Terminal


Screen Shot
------------

![waketime-zsh](https://www.evernote.com/shard/s46/sh/305c23c4-2c42-4dd0-8b88-8c5443d60cd8/43561d9f9642e021/res/4cdb5e47-14cd-47c0-b232-a3f41b8781b7/skitch.png)


Configuration
-----------

WakaTime plugins share a common config file `.wakatime.cfg` located in your user home directory with [these options](https://github.com/wakatime/wakatime#configuring) available.


More
----
* Change heartbeat type as `command`? how?
* Skip sending heartbeat for same command in a short period time?
