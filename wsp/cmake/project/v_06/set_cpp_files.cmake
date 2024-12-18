#   *******************************************************************************
#   
#   mpfw / fw2 - Multi Platform FirmWare FrameWork
#   Copyright (C) (2023) Marco Dau
#   
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU Affero General Public License as published
#   by the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#   
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU Affero General Public License for more details.
#   
#   You should have received a copy of the GNU Affero General Public License
#   along with this program.  If not, see <https://www.gnu.org/licenses/>.
#   
#   You can contact me by the following email address
#   marco <d o t> ing <d o t> dau <a t> gmail <d o t> com
#   
#   *******************************************************************************
## ******************************************************************
## __________________________________________________________________
## TST/APP CPP FILES Definitions
trace_execution()


set(CODE_SDK_DRIVERS_BSP
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/BSP/Components/adv7533/adv7533.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/BSP/Components/ft6x06/ft6x06.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/BSP/Components/otm8009a/otm8009a.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/BSP/Components/wm8994/wm8994.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/BSP/STM32F769I-Discovery/stm32f769i_discovery_eeprom.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/BSP/STM32F769I-Discovery/stm32f769i_discovery.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/BSP/STM32F769I-Discovery/stm32f769i_discovery_audio.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/BSP/STM32F769I-Discovery/stm32f769i_discovery_lcd.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/BSP/STM32F769I-Discovery/stm32f769i_discovery_qspi.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/BSP/STM32F769I-Discovery/stm32f769i_discovery_sd.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/BSP/STM32F769I-Discovery/stm32f769i_discovery_sdram.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/BSP/STM32F769I-Discovery/stm32f769i_discovery_ts.c
)

set(CODE_SDK_DRIVERS_STM32F7xx_HAL_DRIVER
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c
        ## --${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c
        ## --${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c
        ## --${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_can.c
        ## --${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_cec.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_cortex.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_crc.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_crc_ex.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_cryp.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_cryp_ex.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dac.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dac_ex.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dcmi.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dcmi_ex.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dfsdm.c # ....................................... BSP
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c # ......................................... BSP & MSC
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma2d.c # ....................................... BSP & MSC
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma_ex.c # ...................................... BSP & MSC
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dsi.c # ......................................... BSP & MSC
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_eth.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_exti.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_flash.c # ....................................... MSC
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_flash_ex.c # .................................... MSC
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_hash.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_hash_ex.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_hcd.c # ......................................... MSC
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c.c # ......................................... BSP & MSC
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c_ex.c # ...................................... MSC
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2s.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_irda.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_iwdg.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_jpeg.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_lptim.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_ltdc.c # ........................................ BSP & MSC
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_ltdc_ex.c # ..................................... BSP & MSC
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_mdios.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_mmc.c # ......................................... BSP
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_msp_template.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_nand.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_nor.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pcd.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pcd_ex.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_qspi.c # ........................................ BSP
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc_ex.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rng.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rtc.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rtc_ex.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sai.c # ......................................... BSP
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sai_ex.c # ...................................... BSP
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sd.c # .......................................... BSP & MSC
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sdram.c # ....................................... BSP & MSC
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_smartcard.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_smartcard_ex.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_smbus.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_spdifrx.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_spi.c # ......................................... BSP
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_spi_ex.c # ...................................... BSP
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sram.c # ........................................ BSP & MSC
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_tim.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_tim_ex.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_timebase_rtc_alarm_template.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_timebase_rtc_wakeup_template.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_timebase_tim_template.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c 
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart_ex.c     
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_usart.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_wwdg.c

    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_fmc.c # .......................................... BSP & MSC
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_sdmmc.c # ........................................ BSP & MSC
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_usb.c # .......................................... MSC

)

#set(CODE_SDK_MIDDLEWARES_FREERTOS
#    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c
#    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/Third_Party/FreeRTOS/Source/croutine.c
#    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/Third_Party/FreeRTOS/Source/event_groups.c
#    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/Third_Party/FreeRTOS/Source/list.c
#    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/Third_Party/FreeRTOS/Source/queue.c
#    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/Third_Party/FreeRTOS/Source/stream_buffer.c
#    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/Third_Party/FreeRTOS/Source/tasks.c
#    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/Third_Party/FreeRTOS/Source/timers.c
#    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1/port.c
#    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c    
#)

set(CODE_SDK_MIDDLEWARES_FATFS
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/Third_Party/FatFs/src/option/syscall.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/Third_Party/FatFs/src/option/unicode.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/Third_Party/FatFs/src/diskio.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/Third_Party/FatFs/src/ff.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/Third_Party/FatFs/src/ff_gen_drv.c
)

set(CODE_SDK_MIDDLEWARES_USB
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_core.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ctlreq.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ioreq.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_pipes.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Src/usbh_msc.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Src/usbh_msc_bot.c
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Src/usbh_msc_scsi.c
)


set(CODE_SDK_UTILITIES_DIR
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Utilities/Fonts/font12.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Utilities/Fonts/font16.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Utilities/Fonts/font20.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Utilities/Fonts/font24.c
        ## -- ${LIBS_SDK_PLATFORM_SRC_DIR}/Utilities/Fonts/font8.c

    ${LIBS_SDK_PLATFORM_SRC_DIR}/Utilities/Log/lcd_log.c
)

set(CODE_FILES_SDK_PLATFORM_CPP
    ${CODE_SDK_DRIVERS_BSP}
    ${CODE_SDK_DRIVERS_STM32F7xx_HAL_DRIVER}
    ${CODE_SDK_MIDDLEWARES_FATFS}
    ${CODE_SDK_MIDDLEWARES_USB}
    ${CODE_SDK_UTILITIES_DIR}
)

end_include()
