deps_config := \
	/home/pyrohmstr/esp/esp-idf/components/app_trace/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/aws_iot/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/bt/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/driver/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/efuse/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/esp32/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/esp_adc_cal/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/esp_event/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/esp_http_client/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/esp_http_server/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/esp_https_ota/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/espcoredump/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/ethernet/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/fatfs/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/freemodbus/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/freertos/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/heap/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/libsodium/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/log/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/lwip/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/mbedtls/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/mdns/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/mqtt/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/nvs_flash/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/openssl/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/pthread/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/spi_flash/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/spiffs/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/tcpip_adapter/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/unity/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/vfs/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/wear_levelling/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/wifi_provisioning/Kconfig \
	/home/pyrohmstr/esp/esp-idf/components/app_update/Kconfig.projbuild \
	/home/pyrohmstr/esp/esp-adf/components/audio_board/Kconfig.projbuild \
	/home/pyrohmstr/esp/esp-idf/components/bootloader/Kconfig.projbuild \
	/home/pyrohmstr/esp/esp-adf/components/esp-adf-libs/Kconfig.projbuild \
	/home/pyrohmstr/esp/esp-adf/components/esp-sr/Kconfig.projbuild \
	/home/pyrohmstr/esp/esp-idf/components/esptool_py/Kconfig.projbuild \
	/home/pyrohmstr/esp/esp-idf/components/partition_table/Kconfig.projbuild \
	/home/pyrohmstr/esp/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(IDF_TARGET)" "esp32"
include/config/auto.conf: FORCE
endif
ifneq "$(IDF_CMAKE)" "n"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
