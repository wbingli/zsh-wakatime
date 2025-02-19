ZSH plugin for wakatime
=======================

Automatic time tracking for commands in ZSH using [wakatime](http://wakatime.com/).

Installation
------------

It depends on [wakatime CLI](https://github.com/wakatime/wakatime-cli) **6.0 or higher**. Make sure you have configured wakatime API key in your [~/.wakatime.cfg](https://github.com/wakatime/wakatime-cli/blob/develop/USAGE.md) file. If you use wakatime in other editors, this file may be already there.

1. `python3 -c "$(wget -q -O - https://raw.githubusercontent.com/wakatime/vim-wakatime/master/scripts/install_cli.py)"` to install wakatime CLI.

For mac User
```
brew install wakatime-cli
```

3. For oh-my-zsh user:
  - `git clone https://github.com/wbingli/zsh-wakatime.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-wakatime`

  - Edit your `.zshrc` file and add `zsh-wakatime` to oh-my-zsh plugins

3. For Antigen user:
  - `antigen bundle wbingli/zsh-wakatime`

4. Open a new terminal and type commands

5. Visit https://wakatime.com/project/Terminal

Project Detection
------------

By default all actions logged by the ZSH plugin for wakatime are associated with the *Terminal* project, if you would like the plugin to attribute the project based on either git repository or the last accessed project then set `ZSH_WAKATIME_PROJECT_DETECTION` to true in your environment.

To enable:

1. Edit your `.zshrc`
2. Add the line `export ZSH_WAKATIME_PROJECT_DETECTION=true` at the top of the file.


Screenshot
------------

![waketime-zsh](https://www.evernote.com/shard/s46/sh/7a4e4395-b58a-46b7-a2fd-962e37631e68/3eff94b8014f6c3b/res/fff4d1c5-1b44-4e89-a4f6-cdddc19100a1/skitch.png)


Configuration
-----------

WakaTime plugins share a common config file `.wakatime.cfg` located in your user home directory with [these options](https://github.com/wakatime/wakatime#configuring) available.


Troubleshooting
-----------

If you don't see any data while visiting https://wakatime.com/project/Terminal, trying below to find out the problem:

 - Run `ps | grep wakatime` repeatedly as fast as possbile
 - You should notice process with command like `wakatime --write --plugin zsh-wakatime/0.0.1 --entity-type app --project Terminal --entity ls`
 - Copy that full command and execute in the terminal.
 - If any problem happens while running this command, please reference to https://github.com/wakatime/wakatime#troubleshooting  for further troubleshootig.



