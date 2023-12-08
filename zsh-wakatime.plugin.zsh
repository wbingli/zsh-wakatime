# wakatime for zsh

# hook function to send wakatime a tick
hasgit=`type "git">/dev/null 2>&1`$?
send_wakatime_heartbeat() {
    entity=$(waka_filename);
    project=$(waka_projectname);
    if [ "$entity" ]; then
        (wakatime --write --plugin "zsh-wakatime/0.0.1" --entity-type app --project ${project} --entity "$entity"> /dev/null 2>&1 &)
    fi
}
waka_projectname() {
    if [ "x$ZSH_WAKATIME_PROJECT_DETECTION" = "xtrue" ]; then
        if [ $hasgit ]; then
            gitproject=$(git config --local remote.origin.url 2> /dev/null|sed 's#.*/\([^.]*\)#\1#;s#.git$##')
            echo ${gitproject:-<<LAST_PROJECT>>}
        else
            echo "<<LAST_PROJECT>>"
        fi
    else
        echo "Terminal"
    fi
}
# generate text to report as "filename" to the wakatime API
waka_filename() {
    if [ "x$WAKATIME_USE_DIRNAME" = "xtrue" ]; then
        # just use the current working directory
        echo "$PWD"
    else
        # only command without arguments to avoid senstive information
        for token in ${(s. .)history[$((HISTCMD-1))]} ; do
            if ! ((token[(I)=])); then
                echo $token
                break
            fi
        done
    fi
}

precmd_functions+=(send_wakatime_heartbeat)
