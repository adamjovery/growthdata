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
*Appendix 8 - Histograms
sum GdpCapita lagdependent tradeopenness fdiperin hc kof polyarchy tas raindpth ruggedind landlocked, detail
hist GdpCapita, xline(4181.542) xlabel(4181.542 "Mean") xline(1365.379) xmlabel(1365.379 "Median")
hist lagdependent, xline(4095.164) xlabel(4095.164 "Mean") xline(1328.729) xmlabel(1328.729 "Median")
hist tradeopenness, xline(76.52261) xlabel(76.52261 "Mean") xline(66.6506) xmlabel(66.6506 "Median")
hist fdiperin, xline(.0321176) xlabel(.0321176 "Mean") xline(.0150445) xmlabel(.0150445 "Median")
hist hc, xline(1.88472) xlabel(1.88472 "Mean") xline(1.801173) xmlabel(1.801173 "Median")
hist kof, xline(44.03073) xlabel(44.03073 "Mean") xline(43.18438) xmlabel(43.18438 "Median")
hist polyarchy, xline(.3437308 ) xlabel(.3437308 "Mean") xline(.279) xmlabel(.279 "Median")
hist tas, xline(22.82784) xlabel(22.82784 "Mean") xline(24.79) xmlabel(24.79 "Median")
hist raindpth, xline(1300.715) xlabel(1300.715 "Mean") xline(1212) xmlabel(1212 "Median")
hist ruggedind, xline(129.9535) xlabel(129.9535 "Mean") xline(89.9) xmlabel(89.9 "Median")
***************************************************************************************
***************************************************************************************
*Appendix 9 - Continental Differences
*9.1
reg lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked if AfricaDum == 1, robust
est store AfricaOLS
xtreg lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked i.year if AfricaDum == 1, fe robust
est store AfricaFE
xtreg lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked if AfricaDum == 1, re robust
est store AfricaRE

*9.2
reg lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked if AsiaDum == 1, robust
est store AsiaOLS
xtreg lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked i.year if AsiaDum == 1, fe robust
est store AsiaFE
xtreg lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked if AsiaDum == 1, re robust
est store AsiaRE

*9.3
reg lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked if AmericaDum == 1, robust
est store AmericaOLS
xtreg lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked i.year if AmericaDum == 1, fe robust
est store AmericaFE
xtreg lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked if AmericaDum == 1, re robust
est store AmericaRE

*9.4
reg lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked if OceaniaDum == 1, robust
est store OceaniaOLS
*Lack of observations to perform following operations
*xtreg lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked i.year if OceaniaDum == 1, fe robust
*est store OceaniaFE
*xtreg lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind i.landlocked if OceaniaDum == 1, re robust
*est store OceaniaRE

*9.5
*9.5.1
ssc install coefplot
coefplot AfricaOLS AsiaOLS AmericaOLS OceaniaOLS, keep(lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind landlocked) xline(0)

*9.5.2
coefplot AfricaFE AsiaFE AmericaFE, keep(lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind landlocked) xline(0)

*9.5.3
coefplot AfricaRE AsiaRE AmericaRE, keep(lnGdpCapita tradeopenness fdiperin lnhc kof lnpolyarchy tas lnraindpth lnruggedind landlocked) xline(0)
***************************************************************************************
***************************************************************************************