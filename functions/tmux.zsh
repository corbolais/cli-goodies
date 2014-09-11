# Startup configuration for tmux
function startt() {
    case $1 in
        "iitk")
            # Create a new tmux-session
            SESSION="firewall"
            tmux -2 new-session -d -s $SESSION

            # Create the windows
            tmux rename-window -t $SESSION:1 firewall

            # Start defualt programs in them
            tmux send-keys -t $SESSION:1 "auth" C-m

            # Create another tmux-sesion for working
            SESSION=$(basename $PWD)
            tmux -2 new-session -d -s $SESSION

            # General purpose
            tmux rename-window -t $SESSION:1 general-purpose
            tmux split-window -h

            # The vim window
            tmux new-window -t $SESSION -a -n vim
            tmux split-window -h
            tmux select-pane -t 1
            tmux resize-pane -R 30

            # An empty window
            tmux new-window -t $SESSION -a

            # Attach the session
            tmux select-window -t $SESSION:3
            tmux attach -t $SESSION
            ;;

        "project")
            # Create another tmux-sesion for working
            SESSION=$(basename $PWD)
            tmux -2 new-session -d -s $SESSION

            # General purpose
            tmux rename-window -t $SESSION:1 general-purpose
            tmux split-window -h

            # The vim window
            tmux new-window -t $SESSION -a -n vim
            tmux split-window -h
            tmux select-pane -t 1
            tmux resize-pane -R 30

            # An empty window
            tmux new-window -t $SESSION -a

            # Attach the session
            tmux select-window -t $SESSION:3
            tmux attach -t $SESSION
            ;;

        *)
            # Create another tmux-sesion for working
            SESSION="General"
            tmux -2 new-session -d -s $SESSION

            # General purpose
            tmux rename-window -t $SESSION:1 general-purpose
            tmux send-keys -t $SESSION:1 "autostart" C-m
            tmux split-window -h
            tmux select-pane -t 1
            tmux resize-pane -R 30

            # The vim window
            tmux new-window -t $SESSION -a -n vim

            # An empty window
            tmux new-window -t $SESSION -a -n irc 'irssi'

            # Attach the session
            tmux select-window -t $SESSION:3
            tmux attach -t $SESSION
            ;;

    esac
}


