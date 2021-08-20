#!/usr/bin/env zsh

kill -15 $(ps aux | grep "VBoxClient --draganddrop" | grep "Sl" | awk '{print $2;}')
