# AIS-catcher Control Add-on

This Home Assistant Add-on runs AIS-catcher Control, a tool for managing AIS-catcher services.

## Installation

1. Copy this add-on to your Home Assistant `addons` folder.
2. Go to the Home Assistant Add-on Store and install "AIS-catcher Control."
3. Configure the add-on with the following options:
   - `gpsd_ip`: IP address of the GPSD server (default: `127.0.0.1`).
   - `gpsd_port`: Port of the GPSD server (default: `2947`).
   - `share_loc`: Enable location sharing (default: `false`).
4. Start the add-on and access it at `http://<home_assistant_ip>:8110`.

## Configuration

Example configuration:

```yaml
gpsd_ip: "127.0.0.1"
gpsd_port: 2947
share_loc: false
