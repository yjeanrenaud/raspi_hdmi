# raspi_hdmi
v 0.1.2
Some small python scripts that turn the HTMI on and off.
They serve as easy commands for the cli
## requirements
* python 3 for `hdmi.off`and `hdmi.on`
* or use the bash-only versions `hdmi.sh.on` and `hdmi.sh.off` or just `hdmi.sh`
## installation
```
sudo cp hdmi.on /usr/local/bin/hdmi.on
sudo cp hdmi.off /usr/local/bin/hdmi.off
```
or use 
```
sudo cp hdmi.sh.on /usr/local/bin/hdmi.on
sudo cp hdmi.sh.off /usr/local/bin/hdmi.off
sudo cp hdmi.sh /usr/local/bin/hdmi
```
if you do not want/need python3
## usage
just use `hdmi.on` to turn on the HDMI device, `hdmi.off` to turn it off.
alternatively you may also use `hdmi on` and `hdmi off`.

no liability what so ever.
