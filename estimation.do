***************************************************************************************
***************************************************************************************
*Importing dataset
use "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\growthdataset.dta"

*Setting panel data and creating lagged dependent
xtset cowcode year
gen lagdependent = l.GdpCapita

*Creating natural log of variables
gen lnGdpCapita = ln(GdpCapita)
gen lnlagdependent = ln(lagdependent)
gen lntradeopenness = ln(tradeopenness)
gen lnhc = ln(hc)
gen lnpolyarchy = ln(polyarchy)
gen lnraindpth = ln(raindpth)
gen lnruggedind = ln(ruggedind)
***************************************************************************************
***************************************************************************************
*LN Model (1)
regress lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked

xtreg lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked i.year, fe

xtreg lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked, re
***************************************************************************************
***************************************************************************************
*LN  Robust Standard Errors Model (2)
regress lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked, robust

xtreg lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked i.year, fe robust

xtreg lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked, re robust
***************************************************************************************
***************************************************************************************
*LN Lagged Dependent Robust Standard Errors Model (3)
regress lnGdpCapita lnlagdependent tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked, robust

xtreg lnGdpCapita lnlagdependent tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked i.year, fe robust

xtreg lnGdpCapita lnlagdependent tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked, re robust
***************************************************************************************
***************************************************************************************
*LN Driscoll and Kraay Standard Errors Model (4)
ssc install xtscc

xtscc lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked i.year, fe 

xtscc lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked, re
***************************************************************************************
***************************************************************************************
*LN Lagged Dependent Driscoll and Kraay Standard Errors Model (5)
xtscc lnGdpCapita lnlagdependent tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked i.year, fe 

xtscc lnGdpCapita lnlagdependent tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked, re
***************************************************************************************
***************************************************************************************