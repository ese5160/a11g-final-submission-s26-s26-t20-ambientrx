####################################################################
# Automatically-generated file. Do not edit!                       #
####################################################################

set(SDK_PATH "/Users/ananyabhat/.silabs/slt/installs/conan/p/simplfa179856e7001/p")
set(COPIED_SDK_PATH "simplicity_sdk_2025.6.3")
set(PKG_PATH "/Users/ananyabhat/.silabs/slt/installs")

add_library(slc OBJECT
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/board/silabs/src/rsi_board.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/common/src/sl_utility.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/core/chip/src/iPMU_prog/iPMU_dotc/ipmu_apis.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/core/chip/src/iPMU_prog/iPMU_dotc/rsi_system_config_917.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/core/chip/src/rsi_deepsleep_soc.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/core/chip/src/rsi_ps_ram_func.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/core/chip/src/startup_si91x.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/core/chip/src/system_si91x.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/core/common/src/malloc_thread_safety.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/core/common/src/rsi_debug.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/core/common/src/sl_si91x_stack_object_declare.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/core/common/src/syscalls.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/core/config/src/rsi_nvic_priorities_config.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/cmsis_driver/UDMA.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/cmsis_driver/USART.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/hardware_drivers/button/src/sl_si91x_button.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/hardware_drivers/led/src/sl_si91x_led.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/aux_reference_volt_config.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/clock_update.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_adc.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_crc.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_dac.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_egpio.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_opamp.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_sysrtc.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_udma.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_udma_wrapper.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_usart.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/service/clock_manager/src/sl_si91x_clock_manager.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/service/sleeptimer/src/sl_sleeptimer_hal_si91x_sysrtc.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_bod.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_ipmu.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_pll.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_power_save.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_rtc.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_temp_sensor.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_time_period.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_ulpss_clk.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_wwdt.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_adc.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_bjt_temperature_sensor.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_dma.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_driver_gpio.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_i2c.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/unified_peripheral_drivers/src/sl_si91x_peripheral_gpio.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/unified_peripheral_drivers/src/sl_si91x_peripheral_i2c.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/hal/src/sl_si91x_hal_soc_soft_reset.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/ahb_interface/src/rsi_hal_mcu_m4_ram.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/ahb_interface/src/rsi_hal_mcu_m4_rom.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/ahb_interface/src/sl_platform.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/ahb_interface/src/sl_platform_wireless.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/ahb_interface/src/sl_si91x_bus.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/ahb_interface/src/sl_si91x_timer.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/ahb_interface/src/sli_siwx917_soc.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/errno/src/sl_si91x_errno.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/firmware_upgrade/firmware_upgradation.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/host_mcu/si91x/siwx917_soc_ncp_host.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/icmp/sl_net_ping.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/memory/mem_pool_buffer_quota.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/sl_net/src/sl_net_rsi_utility.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/sl_net/src/sl_net_si91x.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/sl_net/src/sl_net_si91x_callback_framework.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/sl_net/src/sl_net_si91x_integration_handler.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/sl_net/src/sl_si91x_net_internal_stack.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/sl_net/src/sli_net_si91x_utility.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/socket/src/sl_si91x_socket_utility.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/src/sl_rsi_utility.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/src/sl_si91x_driver.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/protocol/wifi/si91x/sl_wifi.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/protocol/wifi/src/sl_wifi_basic_credentials.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/protocol/wifi/src/sl_wifi_callback_framework.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/service/mqtt/si91x/sl_mqtt_client.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/service/network_manager/src/sl_net.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/service/network_manager/src/sl_net_basic_certificate_store.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/service/network_manager/src/sl_net_basic_profiles.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/service/network_manager/src/sl_net_credentials.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/service/network_manager/src/sli_net_common_utility.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/sli_si91x_wifi_event_handler/src/sli_si91x_wifi_event_handler.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/sli_wifi_command_engine/src/sli_wifi_command_engine.c"
    "${SDK_PATH}/platform/CMSIS/RTOS2/Source/os_systick.c"
    "${SDK_PATH}/platform/common/src/sl_assert.c"
    "${SDK_PATH}/platform/common/src/sl_cmsis_os2_common.c"
    "${SDK_PATH}/platform/common/src/sl_core_cortexm.c"
    "${SDK_PATH}/platform/common/src/sl_slist.c"
    "${SDK_PATH}/platform/common/src/sl_string.c"
    "${SDK_PATH}/platform/common/src/sl_syscalls.c"
    "${SDK_PATH}/platform/common/src/sli_cmsis_os2_ext_task_register.c"
    "${SDK_PATH}/platform/service/mem_pool/src/sl_mem_pool.c"
    "${SDK_PATH}/platform/service/sl_main/src/rtos/main_retarget.c"
    "${SDK_PATH}/platform/service/sl_main/src/sl_main_init.c"
    "${SDK_PATH}/platform/service/sl_main/src/sl_main_init_memory.c"
    "${SDK_PATH}/platform/service/sl_main/src/sl_main_kernel.c"
    "${SDK_PATH}/platform/service/sleeptimer/src/sl_sleeptimer.c"
    "${SDK_PATH}/util/third_party/freertos/cmsis/Source/cmsis_os2.c"
    "${SDK_PATH}/util/third_party/freertos/kernel/croutine.c"
    "${SDK_PATH}/util/third_party/freertos/kernel/event_groups.c"
    "${SDK_PATH}/util/third_party/freertos/kernel/list.c"
    "${SDK_PATH}/util/third_party/freertos/kernel/portable/GCC/ARM_CM4F/port.c"
    "${SDK_PATH}/util/third_party/freertos/kernel/portable/MemMang/heap_4.c"
    "${SDK_PATH}/util/third_party/freertos/kernel/queue.c"
    "${SDK_PATH}/util/third_party/freertos/kernel/stream_buffer.c"
    "${SDK_PATH}/util/third_party/freertos/kernel/tasks.c"
    "${SDK_PATH}/util/third_party/freertos/kernel/timers.c"
    "../app.c"
    "../autogen/sl_event_handler.c"
    "../autogen/sl_i2c_init.c"
    "../autogen/sl_si91x_button_instances.c"
    "../autogen/sl_si91x_led_instances.c"
    "../main.c"
    "../mqtt_app.c"
    "../sensor_app.c"
    "../sensor_i2c.c"
    "../sht41.c"
    "../veml7700.c"
)

target_include_directories(slc PUBLIC
   "../config"
   "../autogen"
   "../."
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/protocol/wifi/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/service/bsd_socket/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/cmsis_driver/CMSIS/Driver/Include"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/cmsis_driver"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/core/common/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/service/mqtt/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/service/network_manager/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/rom_driver/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/core/chip/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/board/silabs/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/core/config"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/unified_api/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/service/clock_manager/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/unified_peripheral_drivers/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/hardware_drivers/button/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/errno/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/firmware_upgrade"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/sl_net/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/icmp"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/inc/mqtt/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/hardware_drivers/led/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/hal/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/socket/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/ahb_interface/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/service/sleeptimer/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/sli_wifi_command_engine/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/systemlevel/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/resources/defaults"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/resources/certificates"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/resources/html"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/resources/other"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/common/inc"
    "${SDK_PATH}/platform/common/inc"
    "${SDK_PATH}/platform/CMSIS/Core/Include"
    "${SDK_PATH}/platform/CMSIS/RTOS2/Include"
    "${SDK_PATH}/platform/emlib/inc"
    "${SDK_PATH}/util/third_party/freertos/kernel/include"
    "${SDK_PATH}/util/third_party/freertos/cmsis/Include"
    "${SDK_PATH}/util/third_party/freertos/kernel/portable/GCC/ARM_CM4F"
    "${SDK_PATH}/platform/service/mem_pool/inc"
    "${SDK_PATH}/platform/service/sl_main/inc"
    "${SDK_PATH}/platform/service/sl_main/src"
    "${SDK_PATH}/platform/service/sleeptimer/inc"
)

target_compile_definitions(slc PUBLIC
    "AWS_ENABLE=1"
    "SLI_SI91X_MCU_FW_UPGRADE_OTA_DUAL_FLASH=1"
    "SL_SI91X_PRINT_DBG_LOG=1"
    "SIWG917Y111MGABA=1"
    "SLI_SI917=1"
    "SLI_SI917B0=1"
    "SLI_SI91X_MCU_ENABLE_FLASH_BASED_EXECUTION=1"
    "SLI_SI91X_MCU_EXTERNAL_LDO_FOR_PSRAM=1"
    "SL_SI91X_ACX_MODULE=1"
    "SI917Y_DEVKIT=1"
    "SLI_SI91X_MCU_COMMON_FLASH_MODE=1"
    "SLI_SI91X_MCU_CONFIG_RADIO_BOARD_BASE_VER=1"
    "SLI_SI91X_MCU_CONFIG_RADIO_BOARD_VER2=1"
    "SL_BOARD_NAME=\"BRD2708A\""
    "SL_BOARD_REV=\"A02\""
    "SLI_SI91X_MCU_ENABLE_RAM_BASED_EXECUTION=1"
    "__FREERTOS_OS_WISECONNECT=1"
    "SLI_SI91X_EMBEDDED_MQTT_CLIENT=1"
    "SL_NET_COMPONENT_INCLUDED=1"
    "__STATIC_INLINE=static inline"
    "CLOCK_ROMDRIVER_PRESENT=1"
    "ULPSS_CLOCK_ROMDRIVER_PRESENT=1"
    "SL_SI91X_BOARD_INIT=1"
    "SRAM_BASE=0x0cUL"
    "SRAM_SIZE=0x2fc00UL"
    "SLI_CODE_CLASSIFICATION_DISABLE=1"
    "SLI_SI91X_MCU_ENABLE_IPMU_APIS=1"
    "SL_SI91X_SOC_MODE=1"
    "CRC_ROMDRIVER_PRESENT=1"
    "SI91X_32kHz_EXTERNAL_OSCILLATOR=1"
    "DEBUG_ENABLE=1"
    "DEBUG_UART=1"
    "ENABLE_DEBUG_MODULE=1"
    "SL_SI91X_SI917_RAM_MEM_CONFIG=1"
    "UDMA_ROMDRIVER_PRESENT=1"
    "SL_SI91X_I2C_DMA=1"
    "SLI_SI91X_OFFLOAD_NETWORK_STACK=1"
    "SI917=1"
    "SLI_SI91X_ENABLE_OS=1"
    "SLI_SI91X_MCU_INTERFACE=1"
    "TA_DEEP_SLEEP_COMMON_FLASH=1"
    "SLI_SI91X_SOCKETS=1"
    "SI91X_PLATFORM=1"
    "SI91X_SYSRTC_PRESENT=1"
    "SL_SLEEP_TIMER=1"
    "__WEAK=__attribute__((weak))"
    "PLL_ROMDRIVER_PRESENT=1"
    "SL_WIFI_COMPONENT_INCLUDED=1"
    "configNUM_SDK_THREAD_LOCAL_STORAGE_POINTERS=2"
    "SL_COMPONENT_CATALOG_PRESENT=1"
    "SL_CODE_COMPONENT_FREERTOS_KERNEL=freertos_kernel"
    "SL_CODE_COMPONENT_CORE=core"
    "SL_CODE_COMPONENT_SLEEPTIMER=sleeptimer"
)

target_link_libraries(slc PUBLIC
    "-Wl,--start-group"
    "gcc"
    "nosys"
    "c"
    "m"
    "-Wl,--end-group"
)
target_compile_options(slc PUBLIC
    $<$<COMPILE_LANGUAGE:C>:-mcpu=cortex-m4>
    $<$<COMPILE_LANGUAGE:C>:-mthumb>
    $<$<COMPILE_LANGUAGE:C>:-mfpu=fpv4-sp-d16>
    $<$<COMPILE_LANGUAGE:C>:-mfloat-abi=softfp>
    $<$<COMPILE_LANGUAGE:C>:-Wall>
    $<$<COMPILE_LANGUAGE:C>:-Wextra>
    $<$<COMPILE_LANGUAGE:C>:-Os>
    $<$<COMPILE_LANGUAGE:C>:-fdata-sections>
    $<$<COMPILE_LANGUAGE:C>:-ffunction-sections>
    $<$<COMPILE_LANGUAGE:C>:-fomit-frame-pointer>
    $<$<COMPILE_LANGUAGE:C>:-g>
    "$<$<COMPILE_LANGUAGE:C>:SHELL:-Wall -Werror>"
    $<$<COMPILE_LANGUAGE:C>:-Wno-error=deprecated-declarations>
    "$<$<COMPILE_LANGUAGE:C>:SHELL:-Wall -Werror -Wno-error=deprecated-declarations>"
    $<$<COMPILE_LANGUAGE:C>:-mcpu=cortex-m4>
    $<$<COMPILE_LANGUAGE:C>:-fno-lto>
    $<$<COMPILE_LANGUAGE:C>:--specs=nano.specs>
    $<$<COMPILE_LANGUAGE:CXX>:-mcpu=cortex-m4>
    $<$<COMPILE_LANGUAGE:CXX>:-mthumb>
    $<$<COMPILE_LANGUAGE:CXX>:-mfpu=fpv4-sp-d16>
    $<$<COMPILE_LANGUAGE:CXX>:-mfloat-abi=softfp>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
    $<$<COMPILE_LANGUAGE:CXX>:-Wall>
    $<$<COMPILE_LANGUAGE:CXX>:-Wextra>
    $<$<COMPILE_LANGUAGE:CXX>:-Os>
    $<$<COMPILE_LANGUAGE:CXX>:-fdata-sections>
    $<$<COMPILE_LANGUAGE:CXX>:-ffunction-sections>
    $<$<COMPILE_LANGUAGE:CXX>:-fomit-frame-pointer>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    "$<$<COMPILE_LANGUAGE:CXX>:SHELL:-Wall -Werror>"
    $<$<COMPILE_LANGUAGE:CXX>:-Wno-error=deprecated-declarations>
    "$<$<COMPILE_LANGUAGE:CXX>:SHELL:-Wall -Werror -Wno-error=deprecated-declarations>"
    $<$<COMPILE_LANGUAGE:CXX>:-mcpu=cortex-m4>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-lto>
    $<$<COMPILE_LANGUAGE:CXX>:--specs=nano.specs>
    $<$<COMPILE_LANGUAGE:ASM>:-mcpu=cortex-m4>
    $<$<COMPILE_LANGUAGE:ASM>:-mthumb>
    $<$<COMPILE_LANGUAGE:ASM>:-mfpu=fpv4-sp-d16>
    $<$<COMPILE_LANGUAGE:ASM>:-mfloat-abi=softfp>
    "$<$<COMPILE_LANGUAGE:ASM>:SHELL:-x assembler-with-cpp>"
)

set(post_build_command ${POST_BUILD_EXE} postbuild "./wifi_http_otaf_soc_2.slpb" --parameter build_dir:"$<TARGET_FILE_DIR:wifi_http_otaf_soc_2>")
set_property(TARGET slc PROPERTY C_STANDARD 17)
set_property(TARGET slc PROPERTY CXX_STANDARD 17)
set_property(TARGET slc PROPERTY CXX_EXTENSIONS OFF)

target_link_options(slc INTERFACE
    -mcpu=cortex-m4
    -mthumb
    -mfpu=fpv4-sp-d16
    -mfloat-abi=softfp
    -T${CMAKE_CURRENT_LIST_DIR}/../autogen/linkerfile_SoC.ld
    --specs=nano.specs
    "SHELL:-Xlinker -Map=$<TARGET_FILE_DIR:wifi_http_otaf_soc_2>/wifi_http_otaf_soc_2.map"
    "SHELL:-u _printf_float"
    -Wl,--wrap=main
    -fno-lto
    -Wl,--gc-sections
)

# BEGIN_SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA