# Rofi-tt [![Licence](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE) [![Paypal Donate](https://img.shields.io/badge/Donate-Paypal-2244dd.svg)](https://www.paypal.com/paypalme/ernisD)   [![AUR version](https://img.shields.io/aur/version/rofi-tt)](https://aur.archlinux.org/packages/rofi-tt)
<br>
Rofi-tt is a 

## Prerequisites

Make sure you have the following prerequisites installed on your system:

- mpv
- curl
- rofi

## Installation
### Manual
1. Clone the repository:

   ```bash
   git clone https://github.com/pog102/rofi-tt.git
   ```

2. Navigate to the project directory:

   ```bash
   cd rofi-tt
   ```

3. Install

     ```bash
     sudo make install
     ```
4. Reload the udev rules:

   ```bash
   sudo udevadm control --reload-rules
   ```
### AUR

```bash
paru -S rofi-tt
```
