#!/bin/sh

#
# download Javascript
#
curl http://172.16.0.1/static/web-set-app_1_6_9.js.gz --output web-set-app_1_6_9.js.gz

#
# uncompress and beautify
#
zcat web-set-app_1_6_9.js.gz | js-beautify - > web-set-app_1_6_9.js

#
# split file into Javascript packages
#

#   'NR >=     1 && NR <   375'
awk 'NR >=   375 && NR <   458' web-set-app_1_6_9.js > endpoints.txt
#   'NR >=   458 && NR < 13630'
awk 'NR >= 13630 && NR < 14848' web-set-app_1_6_9.js > types/types.js
#   'NR >= 14848 && NR < 15981'
awk 'NR >= 15981 && NR < 17333' web-set-app_1_6_9.js > general_types/general_types.js
#   'NR >= 17333 && NR < 28468'
awk 'NR >= 28468 && NR < 28720' web-set-app_1_6_9.js > pre_commissioning/pre_commissioning.js
#   'NR >= 28720 && NR < 31962'
awk 'NR >= 31962 && NR < 32329' web-set-app_1_6_9.js > web_region/web_region.js
awk 'NR >= 32329 && NR < 32809' web-set-app_1_6_9.js > zigbee/zigbee.js
awk 'NR >= 32809 && NR < 32980' web-set-app_1_6_9.js > sok_status/sok_status.js
awk 'NR >= 32980 && NR < 34108' web-set-app_1_6_9.js > hg2/hg2.js
#   'NR >= 34108 && NR < 39383'
awk 'NR >= 39383 && NR < 39603' web-set-app_1_6_9.js > web_pairing/web_pairing.js
awk 'NR >= 39603 && NR < 43187' web-set-app_1_6_9.js > web_communication/web_communication.js
awk 'NR >= 43187 && NR < 43350' web-set-app_1_6_9.js > device_coupling/device_coupling.js
awk 'NR >= 43350 && NR < 45614' web-set-app_1_6_9.js > web_maintenance/web_maintenance.js
awk 'NR >= 45614 && NR < 45899' web-set-app_1_6_9.js > web_err_resps/web_err_resps.js
awk 'NR >= 45899 && NR < 45939' web-set-app_1_6_9.js > general_errors/general_errors.js
awk 'NR >= 45939 && NR < 45948' web-set-app_1_6_9.js > meter_errors/meter_errors.js
awk 'NR >= 45948 && NR < 45955' web-set-app_1_6_9.js > storedge_errors/storedge_errors.js
awk 'NR >= 45955 && NR < 45961' web-set-app_1_6_9.js > inverter_errors/inverter_errors.js
#   'NR >= 45961 && NR <      '
#   'NR >= 59014 && NR <      ' web-set-app_1_6_9.js > react/react.production.min.js
#   'NR >= 59358 && NR <      ' web-set-app_1_6_9.js > react/react-dom.production.min.js
#   'NR >= 64660 && NR <      ' web-set-app_1_6_9.js > react/scheduler.production.min.js
#   'NR >= 64931 && NR <      ' web-set-app_1_6_9.js > bootstrap/bootstrap.js
#   'NR >= 66785 && NR <      ' web-set-app_1_6_9.js > jquery/jquery.js
#   'NR >= 69996 && NR <      ' web-set-app_1_6_9.js > kickass/kickass.js
#   'NR >=       && NR < 70936'
awk 'NR >= 70936 && NR < 71181' web-set-app_1_6_9.js > web_app_configs/web_app_configs.js
#   'NR >= 71181 && NR < 71254'
awk 'NR >= 71254 && NR < 74079' web-set-app_1_6_9.js > web_status/web_status.js
awk 'NR >= 74079 && NR < 74224' web-set-app_1_6_9.js > factory_reset/factory_reset.js
awk 'NR >= 74224 && NR < 76842' web-set-app_1_6_9.js > web_power_control/web_power_control.js
awk 'NR >= 76842 && NR < 77097' web-set-app_1_6_9.js > web_grid_protection/web_grid_protection.js
awk 'NR >= 77097 && NR < 78055' web-set-app_1_6_9.js > web_device_manager/web_device_manager.js
awk 'NR >= 78055 && NR < 78400' web-set-app_1_6_9.js > web_information/web_information.js
awk 'NR >= 78400 && NR < 79771' web-set-app_1_6_9.js > commissioning/commissioning.js
awk 'NR >= 79771 && NR < 79842' web-set-app_1_6_9.js > monitoring_details_package/monitoring_details_package.js
#   'NR >= 79842 && NR < 89898'
