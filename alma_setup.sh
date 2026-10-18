#!/bin/bash

# 1. Install VMware tools automatically without asking for confirmation
sudo dnf install open-vm-tools -y

# 2. Enable the VMware tools service to start on boot, and start it right now
sudo systemctl enable --now vmtoolsd


# 3. Make the font size change persistent across reboots
setfont sun12x22
echo 'FONT="sun12x22"' | sudo tee /etc/vconsole.conf

# 4. Print a success message at the end
echo "VM Setup is complete!"
