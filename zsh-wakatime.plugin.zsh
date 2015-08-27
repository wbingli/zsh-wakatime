#wakatime for zsh

send_wakatime_heartbeat() {
    (wakatime --write --plugin zsh-wakatime --notfile --project Terminal --file $(last_command)> /dev/null 2>&1 &)
}

#only command without arguments to avoid senstive information
last_command() {
    echo $history[$[HISTCMD-1]] | cut -d ' ' -f1
}

add-zsh-hook precmd send_wakatime_heartbeat
