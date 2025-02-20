Zsh plugin for WakaTime
=======================

Automatic time tracking for commands in Zsh using [WakaTime](http://wakatime.com/).


Installation
---

Plugin requires [WakaTime CLI](https://github.com/wakatime/wakatime-cli) **6.0 or higher**.
Ensure your WakaTime API key is set up in your [~/.wakatime.cfg](https://github.com/wakatime/wakatime-cli/blob/develop/USAGE.md) file. If you use WakaTime in other editors, this file may already exist.

**1. Install WakaTime CLI**

- **Using a Python script**:  
  ```
  python3 -c "$(wget -q -O - https://raw.githubusercontent.com/wakatime/vim-wakatime/master/scripts/install_cli.py)"
  ```

- **For Arch users**:  
  ```
  sudo pacman -S wakatime
  ```

- **For Homebrew users**:  
  ```
  brew install wakatime-cli
  ```

**2. Install the Plugin**

- **For Oh-My-Zsh users**:  
  ```
  git clone https://github.com/wbingli/zsh-wakatime.git ${Zsh_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-wakatime
  ```
  Then, edit your `.zshrc` file and add `zsh-wakatime` to the list of Oh-My-Zsh plugins.

- **For Antigen users**:  
  ```
  antigen bundle wbingli/zsh-wakatime
  ```

**3. Final Steps**

- Open a new terminal and run some commands to start tracking.  
- Visit [WakaTime Dashboard](https://wakatime.com/project/Terminal) to see your stats.


Project Detection
---

By default all actions logged by the Zsh plugin for WakaTime are associated with the *Terminal* project, if you would like the plugin to attribute the project based on either git repository or the last accessed project then set `ZSH_WAKATIME_PROJECT_DETECTION` to true in your environment.

To enable:

1. Edit your `.zshrc`.
2. Add the line `export ZSH_WAKATIME_PROJECT_DETECTION=true` at the top of the file.


Screenshot
---

![waketime-zsh](https://www.evernote.com/shard/s46/sh/7a4e4395-b58a-46b7-a2fd-962e37631e68/3eff94b8014f6c3b/res/fff4d1c5-1b44-4e89-a4f6-cdddc19100a1/skitch.png)


Configuration
---

WakaTime plugins share a common config file `.wakatime.cfg` located in your user home directory with [these options](https://github.com/wakatime/wakatime#configuring) available.


Troubleshooting
---

If you don't see any data while visiting https://wakatime.com/project/Terminal, trying below to find out the problem:

 - Run `ps | grep wakatime` repeatedly as fast as possbile.
 - You should notice process with command like `wakatime-cli --write --plugin zsh-wakatime/0.0.1 --entity-type app --project Terminal --entity ps`.
 - Copy that full command and execute in the terminal.
 - If any problem happens while running this command, please reference to https://github.com/wakatime/wakatime-cli/blob/develop/TROUBLESHOOTING.md for further troubleshootig.
