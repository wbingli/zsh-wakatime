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

![waketime-zsh](https://www.evernote.com/shard/s46/sh/47996872-d054-4c52-843e-2fe17a3d7f90/32032a685a2f8bfb/res/5b40b557-22d0-4520-a687-02d745ef08a2/skitch.png)


Configuration
-----------

WakaTime plugins share a common config file `.wakatime.cfg` located in your user home directory with [these options](https://github.com/wakatime/wakatime#configuring) available.
