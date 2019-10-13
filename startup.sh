#!/bin/bash

# Ubuntu 18.04 / KDE neon 5.14.3 mouse and screen tearing fix

# chmod a+x startup-script.sh
# chmod 777 startup-script.sh
# sudo cp ./startup-script.sh /etc/init.d/
# sudo ln -s /etc/init.d/startup-script.sh /etc/rc5.d/

# --- Microsoft Classic Intellimouse ---
# Fix mouse sensitivity
xinput --set-prop 8 282 2.0
# Fix mouse scroll speed
imwheel --kill --buttons "4 5"

# --- Nvidia GTX Series Graphics Card --
# Fix screen tearing
nvidia-settings --assign CurrentMetaMode="nvidia-auto-select +0+0 { ForceFullCompositionPipeline = On }"

# --- Guake Terminal ---
# Run Guake on startup
#guake &

# --- Tilda Terminal ---
# Run Tilda on startup
tilda &

# --- Guake Terminal ---
# Run Guake on startup
google-chrome &
