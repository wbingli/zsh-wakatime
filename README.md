ZSH plugin for wakatime
=======================

Automatic time tracking for commands in ZSH using wakatime.

Installation (OS X only)
------------

It depends on [zsh](http://www.zsh.org/) and [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh).

Also make sure you have configured wakatime via other wakatime plugins such as VIM, sublime etc.

1. `brew install wakatime`

2. `cd ~/.oh-my-zsh/custom/plugins && git clone git@github.com:wbinglee/zsh-wakatime.git`

3. Edit your `.zshrc` file and add `zsh-wakatime` to oh-my-zsh plugins

4. Open a new terminal and type commands

5. Visit https://wakatime.com/project/Terminal


Screen Shots
------------

![waketime-zsh](https://www.evernote.com/shard/s46/sh/8c7122d7-891a-4b39-b383-21bf93dcd62e/3716b224066b379f/res/0bbca3b2-0f8b-4739-9ebc-c2c0686fd4d0/skitch.png)


Configuring
-----------

WakaTime plugins share a common config file `.wakatime.cfg` located in your user home directory with [these options](https://github.com/wakatime/wakatime#configuring) available.


More
----
* Change heartbeat type as `command`?
* Remove heartbeat entity absolute path, just keep command
* Skip sending heartbeat for same command in a short time
