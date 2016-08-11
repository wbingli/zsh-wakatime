ZSH plugin for wakatime
=======================

Automatic time tracking for commands in ZSH using [wakatime](http://wakatime.com/).

Installation
------------

It depends on [wakatime CLI](https://github.com/wakatime/wakatime) **6.0 or higher**. Make sure you have configured wakatime API key in your [~/.wakatime.cfg](https://github.com/wakatime/wakatime#configuring) file. If you use wakatime in other editors, this file may be already there.

1. `pip install wakatime` to install wakatime CLI, with **6.0 or higher**. Check wakatime CLI version by `wakatime --version`. See more [here](https://github.com/wakatime/wakatime) for wakatime CLI.

2. For oh-my-zsh user:
  - `cd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/wbinglee/zsh-wakatime.git`

  - Edit your `.zshrc` file and add `zsh-wakatime` to oh-my-zsh plugins

3. For Antigen user:
  - `antigen bundle wbinglee/zsh-wakatime`

4. Open a new terminal and type commands

5. Visit https://wakatime.com/project/Terminal


Screen Shot
------------

![waketime-zsh](https://www.evernote.com/shard/s46/sh/47996872-d054-4c52-843e-2fe17a3d7f90/32032a685a2f8bfb/res/5b40b557-22d0-4520-a687-02d745ef08a2/skitch.png)


Configuration
-----------

WakaTime plugins share a common config file `.wakatime.cfg` located in your user home directory with [these options](https://github.com/wakatime/wakatime#configuring) available.
