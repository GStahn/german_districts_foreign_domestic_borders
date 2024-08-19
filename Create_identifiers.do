/* ************************************************************************* 
 *   Creator: Gerrit Stahn
 
 *   Presents a way of identifying German districts having at least one border 
		
 *   Date created: 19.08.2024
** ************************************************************************* */

capture log close
version 16 
set more off, permanently
clear all 

cd "" // Add the path to the folder with the data

********************************************************************************
********************************************************************************
********************************************************************************

import excel "All_german_districts.xlsx", clear first

*** Create indicators for borders ***
preserve
import excel "Border_Bavaria_internal+others.xlsx", clear ///
	firstrow 
drop if _n == _N
destring ID_LK, replace 
levelsof ID_LK, local(int_others) separate("| ID_LK ==")
restore 

generate b_int_others = 0
replace b_int_others = 1 if ID_LK == `int_others'
label var b_int_others "Dummy = 1, if K in Bavaria with an internal border and K in Bavaria with a border to other countries"

preserve
import excel "Border_Germany_with_Bavaria.xlsx", clear ///
	firstrow 	
drop if _n == _N
destring ID_LK, replace 
levelsof ID_LK, local(bavaria) separate("| ID_LK ==")
restore 

generate b_bavaria = 0
replace b_bavaria = 1 if ID_LK == `bavaria'
label var b_bavaria "Dummy = 1, if K in Germany has an internal border to Bavaria "

preserve
import excel "Border_Germany_with_others.xlsx", clear ///
	firstrow 	
drop if _n == _N
destring ID_LK, replace
levelsof ID_LK, local(others) separate("| ID_LK ==")
restore 

generate b_others = 0
replace b_others = 1 if ID_LK == `others'
label var b_others "Dummy = 1, if K in Germany has a border to other countries "

save "All_german_bavarian_districts_border_indicators", replace 

********************************************************************************
exit