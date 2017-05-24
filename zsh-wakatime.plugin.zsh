# wakatime for zsh

# hook function to send wakatime a tick
send_wakatime_heartbeat() {
    entity=$(waka_filename);
    if [ "$entity" ]; then
        if hash git>/dev/null 2>&1 && ${project=$(git rev-parse --show-toplevel>/dev/null 2>&1)}; then
              (wakatime --write --project `basename project` --plugin "zsh-wakatime/0.0.1" --entity-type app --entity "$entity"> /dev/null 2>&1 &)
        else
          (wakatime --write --project "Terminal" --plugin "zsh-wakatime/0.0.1" --entity-type app --entity "$entity"> /dev/null 2>&1 &)
        fi
    fi
}

# generate text to report as "filename" to the wakatime API
waka_filename() {
    if [ "x$WAKATIME_USE_DIRNAME" = "xtrue" ]; then
        # just use the current working directory
        echo "$PWD"
    else
        # only command without arguments to avoid senstive information
        echo "$history[$((HISTCMD-1))]" | cut -d ' ' -f1
    fi
}

heartbeat() {
  (send_wakatime_heartbeat > /dev/null 2>&1 &)
}

precmd_functions+=(heartbeat)
