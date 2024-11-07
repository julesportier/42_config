#!/bin/bash

session='42'
window='dev'

# Check if session exist
if tmux has-session -t $session 2>/dev/null; then
	echo "Attaching to session $session"
else
	tmux new-session -d -s $session
	tmux rename-window $window
	#tmux split-window -v
	# tmux send-keys -t 0 C-b C-'"' C-m
fi

tmux attach-session -t $session
