proto_files = \
    proto/battery_association/battery_association.proto \
    proto/battery_lib/battery_lib.proto \
    proto/central_settings_errors/central_settings_errors.proto \
    proto/commissioning/commissioning.proto \
    proto/device_coupling/device_coupling.proto \
    proto/devices_lib/devices_lib.proto \
    proto/energy_net_device_manager/energy_net_device_manager.proto \
    proto/energy_net_lib/energy_net_lib.proto \
    proto/factory_reset/factory_reset.proto \
    proto/features/features.proto \
    proto/general_errors/general_errors.proto \
    proto/general_types/general_types.proto \
    proto/hg2/hg2.proto \
    proto/import_limit_errors/import_limit_errors.proto \
    proto/inverter_errors/inverter_errors.proto \
    proto/meter_configs/meter_configs.proto \
    proto/meter_errors/meter_errors.proto \
    proto/meter_lib/meter_lib.proto \
    proto/meter_status/meter_status.proto \
    proto/mobile_web_api_package/mobile_web_api_package.proto \
    proto/monitoring_details_package/monitoring_details_package.proto \
    proto/pre_commissioning/pre_commissioning.proto \
    proto/sok_status/sok_status.proto \
    proto/storage_configs/storage_configs.proto \
    proto/storage_lib/storage_lib.proto \
    proto/storedge_errors/storedge_errors.proto \
    proto/types/types.proto \
    proto/web_app_configs/web_app_configs.proto \
    proto/web_battery_group_manager/web_battery_group_manager.proto \
    proto/web_central_settings/web_central_settings.proto \
    proto/web_communication/web_communication.proto \
    proto/web_device_manager/web_device_manager.proto \
    proto/web_energy_restore/web_energy_restore.proto \
    proto/web_err_resps/web_err_resps.proto \
    proto/web_grid_protection/web_grid_protection.proto \
    proto/web_information/web_information.proto \
    proto/web_installation_flow/web_installation_flow.proto \
    proto/web_maintenance/web_maintenance.proto \
    proto/web_meter_device/web_meter_device.proto \
    proto/web_pairing/web_pairing.proto \
    proto/web_power_control/web_power_control.proto \
    proto/web_region/web_region.proto \
    proto/web_status/web_status.proto \
    proto/zigbee/zigbee.proto

all: \
    solaredge.cpp

solaredge.js: $(proto_files)
	protoc -Iproto --js_out=library=solaredge,binary:. $(proto_files)

solaredge.py: $(proto_files)
	protoc -Iproto --python_out=. $(proto_files)

solaredge.cpp: $(proto_files)
	protoc -Iproto --cpp_out=cpp $(proto_files)
