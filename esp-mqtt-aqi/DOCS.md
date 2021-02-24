
Home Assistant Add-on: esp-mqtt-aqi



Installation

Follow these steps to get the add-on installed on your system:

Navigate in your Home Assistant frontend to Supervisor -> Add-on Store -> Three dots -> Repositories. Add this (https://github.com/mavrikkk/hassio-addons) repository to your list.
Find the "esp-mqtt-aqi" add-on and click it.
Click on the "INSTALL" button.



How to use
The basic thing to get the add-on running would be:
Configure your MQTT connection settings.
Start the add-on.



Configuration
Example add-on configuration:

mqtt_address: 192.168.1.1

mqtt_port: 1883

mqtt_login: admin

mqtt_password: admin
