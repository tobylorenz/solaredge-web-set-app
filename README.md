# solaredge-web-set-app

These message definitions are based on web-set-app_1_6_9.js.gz.
It contains the following endpoints:

Message | URL
--------|----
AppConfigs | /app_configs
Region | /region
Region_Country | /region/country
Region_Language | /region/language
Pairing | /pairing
Pairing_Request | /pairing/request
Pairing_Pre_Comm_On_Battery | /pairing/pre_comm/on_battery
Communication | /communication
Communication_Server | /communication/server
Communication_Server_Method | /communication/server_method
Communication_Lan | /communication/lan
Communication_Rs485_SlaveDetect | /communication/rs485/<id>/slave_detect
Communication_Rs485_SlaveDetect_Stop | /communication/rs485/<id>/slave_detect/stop
Communication_Rs485_Protocol | /communication/rs485/<id>/protocol
Communication_Rs485_DeviceId | /communication/rs485/<id>/deviceid
Communication_Rs485_BaudRate | /communication/rs485/<id>/baudrate
Communication_Rs485_Modbus | /communication/rs485/<id>/modbus
Communication_Rs485_Modbus_AddDevice | /communication/rs485/<id>/modbus/add_device
Communication_Rs485_Modbus_RemoveDevice | /communication/rs485/<id>/modbus/remove_device
Communication_Wifi | /communication/wifi
Communication_Wifi_Wps | /communication/wifi/wps
Communication_Wifi_Connect | /communication/wifi/connect
Communication_Wifi_Forget | /communication/wifi/forget
Communication_Hg_Conf | /communication/hg/conf
Communication_Hg_Start_Now | /communication/hg/start_now
Communication_Hg_Start_Later | /communication/hg/start_later
Communication_Hg_Change_Password | /communication/hg/change_password
Communication_Hg_Factory_Reset | /communication/hg/factory_reset
Communication_Wifi_ExtAntenna | /communication/wifi/ext_antenna
Communication_Cellular | /communication/cellular
Communication_Zigbee_Defaults | /communication/zigbee/defaults
Communication_Zigbee_ModuleConfigs | /communication/zigbee/module_configs
Communication_Zigbee_OpMode | /communication/zigbee/op_mode
Communication_Gpio_DeviceType | /communication/gpio/device_type
Communication_Gpio_Pri | /communication/gpio/pri
Communication_Gpio_S0Meter | /communication/gpio/s0meter
Communication_ModbusTcp | /communication/modbus_tcp
Communication_Battery48v_Profile_Select | /communication/battery48v/profile/select
Communication_Coupling_With_Evsa | /communication/coupling_with_evsa
Communication_Coupling_With_Inverter | /communication/coupling_with_inverter
PowerControl | /power_control
PowerControl_GridControl | /power_control/grid_control
PowerControl_EnergyManager_LimitControl | /power_control/energy_manager/limit_control
PowerControl_EnergyManager_EnergyControl | /power_control/energy_manager/energy_control
PowerControl_EnergyManager_StorageControl | /power_control/energy_manager/storage_control
PowerControl_EnergyManager_EssConf | /power_control/energy_manager/ess_conf
PowerControl_EnergyManager_BackupConf | /power_control/energy_manager/backup_conf
PowerControl_EnergyManager_Advanced | /power_control/energy_manager/advanced
PowerControl_ReactivePower | /power_control/reactive_power
PowerControl_ActivePower | /power_control/active_power
PowerControl_PhaseBalancer | /power_control/phase_balancer
PowerControl_Wakeup | /power_control/wakeup
PowerControl_Advanced | /power_control/advanced
PowerControl_ExternalRelay | /power_control/external_relay
PowerControl_ExternalGenerator | /power_control/external_generator
PowerControl_Reset | /power_control/reset
PowerControl_Rrcr | /power_control/rrcr
grid_protection | /grid_protection
grid_protection_login | /grid_protection/login
DeviceManager | /device_manager
DeviceManager_AddDevice_Start | /device_manager/add_device/start
DeviceManager_AddDevice_Stop | /device_manager/add_device/stop
DeviceManager_Device_Config | /device_manager/device/config
DeviceManager_Device_Remove | /device_manager/device/remove
DeviceManager_RemoveAll | /device_manager/remove_all
Maintenance | /maintenance
Maintenance_DateTime | /maintenance/date_and_time
Maintenance_ResetCounters | /maintenance/reset_counters
Maintenance_ResetFactory | /maintenance/reset_factory
Maintenance_Afci | /maintenance/afci
Maintenance_AfciTest | /maintenance/afci/test
Maintenance_Inverters_SelfTest | /maintenance/inverters/<unitSn>/self_test
Maintenance_Standby | /maintenance/standby
Maintenance_UpgradeUsb | /maintenance/fw_upgrade/usb
Maintenance_Batteries_SelfTest_Run | /maintenance/batteries/self_test/run
Maintenance_Batteries_SelfTest_Abort | /maintenance/batteries/self_test/abort
Maintenance_Bui_Reboot | /maintenance/backup_interface/reboot
Maintenance_Circuit_Breakers | /maintenance/circuit_breakers
Maintenance_Trip_Lock | /maintenance/trip_lock
Maintenance_Pid | /maintenance/pid
Information | /information
Status | /status
Status_ServerCommTest | /status/server_comm_test

## Background
SolarEdge SetApp-enabled inverters have an integrated web server for
commissioning, which also provides status information. This frontend is
mostly contained in a JavaScript program, which can be retrieved this way:
```sh
curl http://172.16.0.1/static/web-set-app_1_6_9.js.gz --output web-set-app_1_6_9.js.gz
```
The file contains compiled protobuf codes, which were used to recover the
.proto message definitions. It's likely that the original naming scheme was different.

## Usage
Raw message representation is possible like this
```sh
curl http://172.16.0.1/web/v1/status --output - | protoc --decode_raw
```

Decoded message representation is possible like this
```sh
curl http://172.16.0.1/web/v1/status --output - | protoc --decode web_status.Status web_status.proto
```
