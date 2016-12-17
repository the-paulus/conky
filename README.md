# Conky
[Conky](https://github.com/brndnmtthws/conky) is a free, open source, light-weight, and highly customization software monitoring tool.

# Configuration Specifics
This repository contains my configuration along with supporting scripts that is based on the [hellfire](https://github.com/brndnmtthws/conky/wiki/User-Configs#hellfire) configuration. The hellfire configuration and this one are geared toward systems running Gentoo but should work just fine on any non-Gentoo system as long as the portage section is removed.

This configuration is sensor and processor agnostic. In this configuration I am monitoring my video card's health using the nvidia-smi tool rather than the builtin nVidia support. It should be possible to replace the call to the nvidia-smi.sh script with a script that uses AMD's equivilent.

# Dependencies
- lm_sensors (with proper kernel modules for hardware)
- nNidia drivers
- nVidia settings (for nvidia-smi)
- Gentoo Linux (if you want to see information about portage.)

# Installation
```
$ git clone git@github.com:the-paulus/conky.git conky-paulus
$ mv conky-paulus/conkyrc ~/.conkyrc
$ mkdir ~/.conky
$ mv conky-paulus/scripts ~/.conky
```

[![screenshot]((https://github.com/the-paulus/conky/raw/master/screenshot-thumbnail.png)](https://github.com/the-paulus/conky/raw/master/screenshot.png)
