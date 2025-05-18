#!/bin/bash

SESH="Kubuntu_Laptop"

# Check if the session already exists
if ! tmux has-session -t "$SESH" 2>/dev/null; then
    # Create the session with first window
    tmux new-session -ds "$SESH" -n "Editor"
    tmux send-keys -t "$SESH:Editor" "cd ~/nc/yearTwo/csc252/" C-m

    tmux new-window -t "$SESH" -n "Test"
    tmux send-keys -t "$SESH:Test" "cd ~/nc/yearTwo/csc252/" C-m

    tmux new-window -t "$SESH" -n "Home"
fi

# Always attach to the session
exec tmux attach-session -t "$SESH"
