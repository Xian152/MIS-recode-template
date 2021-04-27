
********************************
*** Woman anthropometrics*******
******************************** 	

ren v008 dateinterview
ren b3_01 wdoblastchild
rename v213 wpregnant

*w_bmi_1549	15-49y woman's BMI      
	gen w_bmi_1549 =. 
	gen wunderweight=.
	gen wnormal_weight=.
/*	gen w_bmi_1549=v437/(v438)^2
	replace w_bmi_1549=. if (dateinterview-wdoblastchild)<=3 | wpregnant==1
    replace w_bmi_1549 = . if w_bmi_1549<9 | w_bmi_1549>70
	
	gen wunderweight=1 if w_bmi_1549<18.5
	replace wunderweight=0 if w_bmi_1549>=18.5
	replace wunderweight=. if w_bmi_1549==.
	
	gen wnormal_weight=1 if w_bmi_1549>=18.5 & w_bmi_1549<25
	replace wnormal_weight=0 if w_bmi_1549<18.5 | w_bmi_1549>=25
	replace wnormal_weight=. if w_bmi_1549==.
*/ 	
*w_overweight_1549	15-49 woman's BMI>25 (1/0) 
	gen w_overweight_1549=.
/*
	gen w_overweight_1549=1 if w_bmi_1549>=25
	replace w_overweight_1549=0 if w_bmi_1549<25
	replace w_overweight_1549=. if w_bmi_1549==. 
*/
*w_obese_1549	15-49y woman's BMI>=30 (1/0) 
	gen w_obese_1549=.
	gen v437=.
/*	
	gen w_obese_1549=1 if w_bmi_1549>=30
	replace w_obese_1549=0 if w_bmi_1549<30
	replace w_obese_1549=. if w_bmi_1549==.
	
	rename v437 wweight
*/
*w_height_1549	15-49y woman's height in meters
	gen w_height_1549 = . 
	
*wm_sampleweight sample weight for individual woman
    gen w_sampleweight = v005/10e6

***********compare 
	
