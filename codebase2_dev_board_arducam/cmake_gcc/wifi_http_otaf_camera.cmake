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
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/cmsis_driver/GSPI.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/cmsis_driver/UDMA.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/cmsis_driver/USART.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/aux_reference_volt_config.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/clock_update.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_adc.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_crc.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_dac.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_egpio.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_gspi.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_opamp.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_udma.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_udma_wrapper.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_usart.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/service/clock_manager/src/sl_si91x_clock_manager.c"
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
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_gspi.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_i2c.c"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_usart.c"
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
    "../main.c"
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
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/errno/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/firmware_upgrade"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/sl_net/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/icmp"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/inc/mqtt/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/mcu/hal/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/socket/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/inc"
    "${SDK_PATH}/../../wisec20ec8121a2e2c/p/components/device/silabs/si91x/wireless/ahb_interface/inc"
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
    "GSPI_CONFIG=1"
    "GSPI_MULTI_SLAVE=1"
    "SL_SI91X_GSPI_DMA=1"
    "SL_SI91X_REQUIRES_INTF_PLL=1"
    "SL_SI91X_I2C_DMA=1"
    "SLI_SI91X_OFFLOAD_NETWORK_STACK=1"
    "SI917=1"
    "SLI_SI91X_ENABLE_OS=1"
    "SLI_SI91X_MCU_INTERFACE=1"
    "TA_DEEP_SLEEP_COMMON_FLASH=1"
    "SLI_SI91X_SOCKETS=1"
    "SL_SI91X_USART_DMA=1"
    "USART_MODULE=1"
    "PLL_ROMDRIVER_PRESENT=1"
    "SL_WIFI_COMPONENT_INCLUDED=1"
    "configNUM_SDK_THREAD_LOCAL_STORAGE_POINTERS=2"
    "SL_COMPONENT_CATALOG_PRESENT=1"
    "SL_CODE_COMPONENT_FREERTOS_KERNEL=freertos_kernel"
    "SL_CODE_COMPONENT_CORE=core"
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

set(post_build_command ${POST_BUILD_EXE} postbuild "./wifi_http_otaf_camera.slpb" --parameter build_dir:"$<TARGET_FILE_DIR:wifi_http_otaf_camera>")
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
    "SHELL:-Xlinker -Map=$<TARGET_FILE_DIR:wifi_http_otaf_camera>/wifi_http_otaf_camera.map"
    "SHELL:-u _printf_float"
    -Wl,--wrap=main
    -fno-lto
    -Wl,--gc-sections
)

# BEGIN_SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA