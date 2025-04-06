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
*Appendix 3 - Descriptive Statistics
*3.1
summarize GdpCapita tradeopenness fdiperin hc kof polyarchy tas raindpth ruggedind landlocked

*3.2
pwcorr GdpCapita tradeopenness fdiperin hc kof polyarchy tas raindpth ruggedind landlocked

*3.3
xtsum GdpCapita tradeopenness fdiperin hc kof polyarchy tas raindpth ruggedind landlocked

*3.4
xtsum lnGdpCapita lnlagdependent tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind landlocked

*3.5
pwcorr lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind landlocked

*3.6
pwcorr lnGdpCapita lnlagdependent tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind landlocked
***************************************************************************************
***************************************************************************************
*Appendix 4 - Models (1) & (2)
*4.1
xtreg lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked, re
xttest0
est store random

*4.2
xtreg lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked i.year, fe
est store fixed
hausman fixed random, sigmamore
drop fixed
drop random

*4.3
regress lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked
predict r, resid 
kdensity r, normal

*4.4
vif

*4.5 
hettest

*4.6
rvfplot, yline(0)

*4.7
xtreg lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked i.year, fe
ssc install xttest3
xttest3

*4.8
xtserial lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind landlocked

*4.9
ssc install xtcd2
xtcd2
***************************************************************************************
***************************************************************************************
*Appendix 5 - Model (3)
*5.1 
regress lnGdpCapita lnlagdependent tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked, robust
predict r, resid 
kdensity r, normal

*5.2
vif

*5.3
xtreg lnGdpCapita lnlagdependent tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked, re robust
xttest0
***************************************************************************************
***************************************************************************************
*Appendix 6 - Model (4) & (5)
ssc install xtscc

xtscc lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked i.year, fe 

xtscc lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked, re

xtscc lnGdpCapita lnlagdependent tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked i.year, fe 

xtscc lnGdpCapita lnlagdependent tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked, re
***************************************************************************************
***************************************************************************************
*Appendix 7 - Standardised Coefficients & Dominance Statistics
*7.2
*7.2.1
domin lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth, reg(xtreg, robust fe) fitstat(e(r2_b))

*7.2.2
domin lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind landlocked, reg(xtreg, robust re) fitstat(e(r2_b))

*7.2.3
domin lnGdpCapita lnlagdependent tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth, reg(xtreg, robust fe) fitstat(e(r2_b))

*7.2.4
domin lnGdpCapita lnlagdependent tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind landlocked, reg(xtreg, robust re) fitstat(e(r2_b))
***************************************************************************************
***************************************************************************************