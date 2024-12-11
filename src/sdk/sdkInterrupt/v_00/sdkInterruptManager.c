//  *******************************************************************************
//  
//  mpfw / fw2 - Multi Platform FirmWare FrameWork 
//      library that contains the essential code that is used in every application
//  Copyright (C) (2023) Marco Dau
//  
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU Affero General Public License as published
//  by the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//  
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU Affero General Public License for more details.
//  
//  You should have received a copy of the GNU Affero General Public License
//  along with this program.  If not, see <https://www.gnu.org/licenses/>.
//  
//  You can contact me by the following email address
//  marco <d o t> ing <d o t> dau <a t> gmail <d o t> com
//  
//  *******************************************************************************
/*
 * sdkInterruptManager.c
 *
 *  Created on: Jun, 12 2024
 *      Author: Marco Dau
 */

/* Includes ------------------------------------------------------------------*/
#include "sdkInterruptManager.h"
#include "sdkInterruptTbl.h"


void interruptHandler(kSdkInterruptId p_InterruptId)  {

 	sdkInterruptUnit* l_PtrInterruptUnit;
 	l_PtrInterruptUnit = sdkInterruptUnitPtrArray;
 	while(l_PtrInterruptUnit[0]) {
        if(p_InterruptId == l_PtrInterruptUnit[0]->interruptId) {
            if(
                (kSdkWhenRunHandler_Always == l_PtrInterruptUnit[0]->mode) ||
                (
                    (kSdkWhenRunHandler_WhenAppIdMatches == l_PtrInterruptUnit[0]->mode) &&
                    (g_AppIdActive == l_PtrInterruptUnit[0]->AppId)
                )
            ) {
         		l_PtrInterruptUnit[0]->Handler();
            }
        }
       	l_PtrInterruptUnit++;
 	}

}

/******************************************************************************/
/*            Cortex-M7 Processor Exceptions Handlers                         */
/******************************************************************************/

/**
  * @brief   This function handles NMI exception.
  * @param  None
  * @retval None
  */
void NMI_Handler(void)
{
}

/**
  * @brief  This function handles Hard Fault exception.
  * @param  None
  * @retval None
  */
void HardFault_Handler(void)
{
    /* Go to infinite loop when Hard Fault exception occurs */
    while (1)
    {
    }
}

/**
  * @brief  This function handles Memory Manage exception.
  * @param  None
  * @retval None
  */
void MemManage_Handler(void)
{
  /* Go to infinite loop when Memory Manage exception occurs */
    while (1)
    {
    }
}

/**
  * @brief  This function handles Bus Fault exception.
  * @param  None
  * @retval None
  */
void BusFault_Handler(void)
{
  /* Go to infinite loop when Bus Fault exception occurs */
    while (1)
    {
    }
}

/**
  * @brief  This function handles Usage Fault exception.
  * @param  None
  * @retval None
  */
void UsageFault_Handler(void)
{
    /* Go to infinite loop when Usage Fault exception occurs */
    while (1)
    {
    }
}

/**
  * @brief  This function handles SVCall exception.
  * @param  None
  * @retval None
  */
void SVC_Handler(void)
{
}

/**
  * @brief  This function handles Debug Monitor exception.
  * @param  None
  * @retval None
  */
void DebugMon_Handler(void)
{
}

/**
  * @brief  This function handles PendSVC exception.
  * @param  None
  * @retval None
  */
void PendSV_Handler(void)
{
}

/**
  * @brief  This function handles SysTick Handler.
  * @param  None
  * @retval None
  */
void SysTick_Handler(void)
{
    interruptHandler(kSdkInterruptId_SysTick)
}

/******************************************************************************/
/*                 STM32F7xx Peripherals Interrupt Handlers                   */
/*  Add here the Interrupt Handler for the used peripheral(s) (PPP), for the  */
/*  available peripheral interrupt handler's name please refer to the startup */
/*  file (startup_stm32f7xx.s).                                               */
/******************************************************************************/
/**
  * @brief  This function handles External lines 15 to 10 interrupt request.
  * @param  None
  * @retval None
  */
void EXTI15_10_IRQHandler(void)
{
    while (1)
    {
    }
    // HAL_GPIO_EXTI_IRQHandler(WAKEUP_BUTTON_PIN);
    // HAL_GPIO_EXTI_IRQHandler(TS_INT_PIN);
}

/**
  * @brief  This function handles DMA2 Stream 0 interrupt request.
  * @param  None
  * @retval None
  */
void DMA2_Stream0_IRQHandler(void)
{
    while (1)
    {
    }

    // if(SdmmcTest == 1)
    // {
    //     HAL_DMA_IRQHandler(uSdHandle.hdmarx);
    // }
    // else if(SdramTest == 1)
    // {
    //     HAL_DMA_IRQHandler(sdramHandle.hdma);
    // }
    // else
    // {
    //     HAL_DMA_IRQHandler(hAudioInTopLeftFilter.hdmaReg);
    // }
}

/**
  * @brief  This function handles DMA2 Stream 5 interrupt request.
  * @param  None
  * @retval None
  */
void DMA2_Stream5_IRQHandler(void)
{
    // if(SdmmcTest == 1)
    // {
    //     HAL_DMA_IRQHandler(uSdHandle.hdmatx);
    // }
    // else
    // {
    //     HAL_DMA_IRQHandler(hAudioInTopRightFilter.hdmaReg); 
    // }
    while (1)
    {
    }
}

/**
  * @brief  This function handles DMA2 Stream 1 interrupt request.
  * @param  None
  * @retval None
  */
void AUDIO_OUT_SAIx_DMAx_IRQHandler(void)
{
    // HAL_DMA_IRQHandler(haudio_out_sai.hdmatx);
    while (1)
    {
    }
}

/**
  * @brief  This function handles DMA2 Stream 6 interrupt request.
  * @param  None
  * @retval None
  */
void AUDIO_DFSDMx_DMAx_BUTTOM_LEFT_IRQHandler(void)
{
    // HAL_DMA_IRQHandler(hAudioInButtomLeftFilter.hdmaReg);
    while (1)
    {
    }
}

/**
  * @brief  This function handles DMA2 Stream 7 interrupt request.
  * @param  None
  * @retval None
  */
void AUDIO_DFSDMx_DMAx_BUTTOM_RIGHT_IRQHandler(void)
{
    // HAL_DMA_IRQHandler(hAudioInButtomRightFilter.hdmaReg);
    while (1)
    {
    }
}

/**
  * @brief  This function handles SDMMC2 interrupt request.
  * @param  None
  * @retval None
  */
void BSP_SDMMC_IRQHandler(void)
{
    // HAL_SD_IRQHandler(&uSdHandle);
    while (1)
    {
    }
}

// start - from MSC_Standalone   

/******************************************************************************/
/* STM32F7xx Peripherals Interrupt Handlers */
/* Add here the Interrupt Handler for the used peripheral(s) (PPP), for the */
/* available peripheral interrupt handler's name please refer to the startup */
/* file (startup_stm32f7xx.s).  */
/******************************************************************************/

/**
  * @brief  This function handles USB-On-The-Go FS/HS global interrupt request.
  * @param  None
  * @retval None
  */
#ifdef USE_USB_FS
void OTG_FS_IRQHandler(void)
#else
void OTG_HS_IRQHandler(void)
#endif
{
    // HAL_HCD_IRQHandler(&hhcd);
    while (1)
    {
    }
}

// end   - from MSC_Standalone   

/**
  * @}
  */

/**
  * @}
  */

