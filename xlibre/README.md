# XLibre packages for KISS Linux

Packages for the XLibre X11 server and common drivers.

Add this directory to the start of your KISS_PATH to prefer XLibre over Xorg packages from other repos.

Main packages:
- xlibre-xserver
- xlibre-xf86-video-intel
- xlibre-xf86-input-libinput
- xlibre-xf86-video-amdgpu
- xlibre-xf86-input-evdev

Drivers must be built against xlibre-xserver (ABI changes).
