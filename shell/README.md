# [mAIn()](https://github.com/qitas/mAIn)

### window 下python脚本使用

相应目录下进行 cmd 命令

```
cmd
dir
python fixKeil.py input.uvproj output.uvproj
```
####  99-platformio-udev.rules

Linux users have to install udev rules for PlatformIO supported boards/devices. 

This file must be placed at /etc/udev/rules.d/99-platformio-udev.rules (preferred location) or /lib/udev/rules.d/99-platformio-udev.rules (required on some broken systems).

```
# Recommended
curl -fsSL https://raw.githubusercontent.com/platformio/platformio-core/master/scripts/99-platformio-udev.rules | sudo tee /etc/udev/rules.d/99-platformio-udev.rules

# OR, manually download and copy this file to destination folder
sudo cp 99-platformio-udev.rules /etc/udev/rules.d/99-platformio-udev.rules


sudo service udev restart

# or

sudo udevadm control --reload-rules
sudo udevadm trigger

sudo usermod -a -G dialout $USER
sudo usermod -a -G plugdev $USER

```