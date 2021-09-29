# dotfiles

# Polybar

How to use:
    - place all files into ~/.config/polybar
    - make all .sh files executable
    - Install Nerd Fonts (https://www.nerdfonts.com/)
    - run ./launch.sh
    - Install this: pip install --upgrade google-api-python-client google-auth-httplib2 google-auth-oauthlib
    - Run this for auth gmail ~/.config/polybar/gmail/auth.py

To make it default on Openbox when SO start:
    - Put this command into ~/.config/openbox/autostart
    bash ~/.config/polybar/launch.sh