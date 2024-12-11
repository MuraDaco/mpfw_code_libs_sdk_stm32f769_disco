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
##################################################################################
## _______________________________________________________________________________
## RELATIVE PATH Definitions

##################################################################################
## Relative path from CMakeLists.txt project folder                             ##
##################################################################################
trace_execution()

include(${CODE_MAIN_CMAKE_LIBS_SDK_VER_DEF_DIR}/set_class_src_ver.cmake)

set(LIBS_SDK_PLATFORM_SRC_DIR       ${LIBS_SDK_PLATFORM_DIR}/src/v_${SDK_PLATFORM_LIB_VER} )

set(CODE_DIR_LIB_SDK_PLATFORM_INCLUDE
    ${SDK_PLATFORM_CONF_DIR}
    ${SDK_PLATFORM_FATFS_CONF_DIR}
    ${SDK_PLATFORM_FREERTOS_CONF_DIR}
    ${SDK_PLATFORM_SDK_CONF_DIR}

    ${LIBS_SDK_PLATFORM_DIR}/src/sdk/sdkInterrupt/v_${SDK_PLATFORM_INTERRUPT_LIB_VER}
    ${LIBS_SDK_PLATFORM_DIR}/src/sdk/sdkMpu/v_${SDK_PLATFORM_MPU_LIB_VER}

    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/CMSIS/Device/ST/STM32F7xx/Include 
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/CMSIS/Include 
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/STM32F7xx_HAL_Driver/Inc 
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/BSP/STM32F769I-Discovery 
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Drivers/BSP/Components/Common 
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Utilities/Log 
    #${LIBS_SDK_PLATFORM_SRC_DIR}/Utilities/Fonts 
    #${LIBS_SDK_PLATFORM_SRC_DIR}/Utilities/CPU 

    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/Third_Party/FreeRTOS/Source/include 
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS 
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 

    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc 
    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/ST/STM32_USB_Host_Library/Core/Inc 

    ${LIBS_SDK_PLATFORM_SRC_DIR}/Middlewares/Third_Party/FatFS/src 
    
)

end_include()
