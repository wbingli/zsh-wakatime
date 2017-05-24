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


Screenshot
------------

![waketime-zsh](https://www.evernote.com/shard/s46/sh/7a4e4395-b58a-46b7-a2fd-962e37631e68/3eff94b8014f6c3b/res/fff4d1c5-1b44-4e89-a4f6-cdddc19100a1/skitch.png)


Configuration
-----------

WakaTime plugins share a common config file `.wakatime.cfg` located in your user home directory with [these options](https://github.com/wakatime/wakatime#configuring) available.
