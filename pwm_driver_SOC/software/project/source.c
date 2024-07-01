/*
 * source.c
 *
 *  Created on: 09-04-2024
 *      Author: Riko
 */

	#include <unistd.h>
	#include "system.h"

	//define a structure PWM
	typedef struct{
	    volatile unsigned int divi;
	    volatile unsigned int duty;
	    volatile unsigned int enable;
	}PWM_M;

	int main()
	{
	int dir = 1;

	PWM_M *pwm_m = (PWM_M *)PWM_M_0_BASE; //Point pwm to the first address of PWM 0_BASE

		pwm_m->divi = 1000;
		pwm_m->duty = 0;
		pwm_m->enable = 1;

 //Change the length of time the LED lights up in one cycle by continuously changing the duty value.
	    while(1){
	        if(dir > 0){
	            if(pwm_m->duty < pwm_m->divi)
	            	pwm_m->duty += 100;
	            else
	                dir = 0;
	        }
	        else{
	            if(pwm_m->duty > 0)
	            	pwm_m->duty -= 100;
	            else
	                dir = 1;
	        }

	        usleep(100000);
	    	}
	    return 0;
	}








