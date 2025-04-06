***************************************************************************************
***************************************************************************************
use "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\standardisedgraphdata.dta"
***************************************************************************************
***************************************************************************************
*Model (2) Graphs
*FErobust
scatter FeRobustStandardisedCoefficients FeRobustStandardisedDominance, mlabel(VariableName) colorvar(negsigFR) colordiscrete colorlist(blue%40 red%40 blue red) clegend(off)
*RErobust
scatter ReRobustStandardisedCoefficients ReRobustStandardisedDominance, mlabel(VariableName) colorvar(negsigRR) colordiscrete colorlist(blue%40 red%40 blue red) clegend(off)
***************************************************************************************
***************************************************************************************
*Model (3) Graphs
*FElagged
scatter FeLaggedStandardisedCoefficients FeLaggedStandardisedDominance if FeLaggedStandardisedDominance < 0.5, mlabel(VariableName) colorvar(negsigFL) colordiscrete colorlist(blue%40 red%40 blue red) clegend(off)
*RElagged
scatter ReLaggedStandardisedCoefficients ReLaggedStandardisedDominance if ReLaggedStandardisedDominance < 0.5, mlabel(VariableName) colorvar(negsigRL) colordiscrete colorlist(blue%40 red%40 blue red) clegend(off)
***************************************************************************************
***************************************************************************************