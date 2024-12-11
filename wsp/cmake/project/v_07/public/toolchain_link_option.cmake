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
target_link_options(${EXECUTABLE} PRIVATE

    -mcpu=cortex-m7 
    -T STM32F769NIHX_FLASH.ld
    --specs=nosys.specs 
    -Wl,-Map=${PROJECT_NAME}.map
    -Wl,--gc-sections # important to reduce size of executable
    -static 
    --specs=nano.specs 
    -mfpu=fpv5-d16
    -mfloat-abi=hard
    -mthumb
    -Wl,--start-group -lc -lm -lstdc++ -lsupc++ -Wl,--end-group

)


# Print executable size
add_custom_command(TARGET ${EXECUTABLE}
    POST_BUILD
    COMMAND arm-none-eabi-size ${EXECUTABLE}
)

# Create hex file
add_custom_command(TARGET ${EXECUTABLE}
     POST_BUILD
     COMMAND arm-none-eabi-objcopy -O ihex ${EXECUTABLE} ${PROJECT_NAME}.hex
     COMMAND arm-none-eabi-objcopy -O binary ${EXECUTABLE} ${PROJECT_NAME}.bin
)

if(PLATFORM_ENVIRONMENT_BUILD_DIR)

    add_custom_command(TARGET ${EXECUTABLE}
        PRE_BUILD

        COMMENT "Copying script link files into current build directory"
        COMMAND echo "pwd: `pwd`" 
        COMMAND [ "${CMAKE_BUILD_TYPE}" = "Release" ] && cp "${WSP_DIR__FROM_BUILD}/cmake/project/${WP_PLATFORM_STR}/link_script/rls/*.ld" . || true
        COMMAND [ "${CMAKE_BUILD_TYPE}" = "Debug" ]   && cp "${WSP_DIR__FROM_BUILD}/cmake/project/${WP_PLATFORM_STR}/link_script/dbg/*.ld" . || true
    )

    add_custom_command(TARGET ${EXECUTABLE}
        POST_BUILD
        COMMENT "Copying executable file into ${PLATFORM_ENVIRONMENT_BUILD_DIR} directory"
    )
    add_custom_command(TARGET ${EXECUTABLE}
        POST_BUILD

        COMMAND [ -d ${PLATFORM_ENVIRONMENT_BUILD_DIR} ] || mkdir            ${PLATFORM_ENVIRONMENT_BUILD_DIR}
        COMMAND [ -d ${PLATFORM_ENVIRONMENT_BUILD_DIR} ] && cp ${EXECUTABLE} ${PLATFORM_ENVIRONMENT_BUILD_DIR} 
    )
endif()

add_custom_command(TARGET ${EXECUTABLE}
    POST_BUILD
    COMMENT "Platform selected: ${WP_PLATFORM_STR}"
)
