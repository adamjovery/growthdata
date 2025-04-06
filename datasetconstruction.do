***************************************************************************************
***************************************************************************************
*Constructing Gdp Growth
import excel "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\P_Popular Indicators.xlsx", sheet("Data") firstrow
drop if SeriesName != "GDP growth (annual %)"

gen id = _n
order id
reshape long YR , i(id) j(year)
replace YR = "." if YR == ".."
destring, replace
rename YR GdpGrowth
rename CountryName country
rename CountryCode countrycode
drop SeriesCode
drop SeriesName

do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset COW codes Do.do"
do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset Pruning Do.do"
save "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\GdpGrowth.dta"
clear
***************************************************************************************
***************************************************************************************
*Constructing Gdp Current
import excel "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\P_Popular Indicators.xlsx", sheet("Data") firstrow
drop if SeriesName != "GDP (current US$)"

gen id = _n
order id
reshape long YR , i(id) j(year)
replace YR = "." if YR == ".."
destring, replace
rename YR GdpCurrent
rename CountryName country
rename CountryCode countrycode
drop SeriesCode
drop SeriesName

do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset COW codes Do.do"
do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset Pruning Do.do"
save "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\GdpCurrent.dta"
clear
***************************************************************************************
***************************************************************************************
*Constructing Gdp per capita
import excel "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\P_Popular Indicators.xlsx", sheet("Data") firstrow
drop if SeriesName != "GDP per capita (current US$)"

gen id = _n
order id
reshape long YR , i(id) j(year)
replace YR = "." if YR == ".."
destring, replace
rename YR GdpCapita
rename CountryName country
rename CountryCode countrycode
drop SeriesCode
drop SeriesName

do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset COW codes Do.do"
do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset Pruning Do.do"
save "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\GdpPerCapita.dta"
clear
***************************************************************************************
***************************************************************************************
*Constructing Exports
import excel "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\P_Popular Indicators.xlsx", sheet("Data") firstrow
drop if SeriesName != "Exports of goods and services (% of GDP)"

gen id = _n
order id
reshape long YR , i(id) j(year)
replace YR = "." if YR == ".."
destring, replace
rename YR Exports
rename CountryName country
rename CountryCode countrycode
drop SeriesCode
drop SeriesName

do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset COW codes Do.do"
do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset Pruning Do.do"
save "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Exports.dta"
clear
***************************************************************************************
***************************************************************************************
*Constructing Imports
import excel "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\P_Popular Indicators.xlsx", sheet("Data") firstrow
drop if SeriesName != "Imports of goods and services (% of GDP)"

gen id = _n
order id
reshape long YR , i(id) j(year)
replace YR = "." if YR == ".."
destring, replace
rename YR Imports
rename CountryName country
rename CountryCode countrycode
drop SeriesCode
drop SeriesName

do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset COW codes Do.do"
do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset Pruning Do.do"
save "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Imports.dta"
clear
***************************************************************************************
***************************************************************************************
*Constructing Merchandise Trade
import excel "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\P_Popular Indicators.xlsx", sheet("Data") firstrow
drop if SeriesName != "Merchandise trade (% of GDP)"

gen id = _n
order id
reshape long YR , i(id) j(year)
replace YR = "." if YR == ".."
destring, replace
rename YR MerchTrade
rename CountryName country
rename CountryCode countrycode
drop SeriesCode
drop SeriesName

do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset COW codes Do.do"
do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset Pruning Do.do"
save "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\MerchandiseTrade.dta"
clear
***************************************************************************************
***************************************************************************************
*Constructing Population Growth
import excel "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\P_Popular Indicators.xlsx", sheet("Data") firstrow
drop if SeriesName != "Population growth (annual %)"

gen id = _n
order id
reshape long YR , i(id) j(year)
replace YR = "." if YR == ".."
destring, replace
rename YR PopGrowth
rename CountryName country
rename CountryCode countrycode
drop SeriesCode
drop SeriesName

do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset COW codes Do.do"
do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset Pruning Do.do"
save "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\PopulationGrowth.dta"
clear
***************************************************************************************
***************************************************************************************
*Constructing Primary Education
import excel "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\P_Popular Indicators.xlsx", sheet("Data") firstrow
drop if SeriesName != "Primary completion rate, total (% of relevant age group)"

gen id = _n
order id
reshape long YR , i(id) j(year)
replace YR = "." if YR == ".."
destring, replace
rename YR PriEdu
rename CountryName country
rename CountryCode countrycode
drop SeriesCode
drop SeriesName

do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset COW codes Do.do"
do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset Pruning Do.do"
save "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\PrimaryEducation.dta"
clear
***************************************************************************************
***************************************************************************************
*Constructing Secondary Education
import excel "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\P_Popular Indicators.xlsx", sheet("Data") firstrow
drop if SeriesName != "School enrollment, secondary (% gross)"

gen id = _n
order id
reshape long YR , i(id) j(year)
replace YR = "." if YR == ".."
destring, replace
rename YR SecEdu
rename CountryName country
rename CountryCode countrycode
drop SeriesCode
drop SeriesName

do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset COW codes Do.do"
do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset Pruning Do.do"
save "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\SecondaryEducation.dta"
clear
***************************************************************************************
***************************************************************************************
*Constructing Foreign direct investment net inflows
import excel "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\P_Popular Indicators.xlsx", sheet("Data") firstrow
drop if SeriesName != "Foreign direct investment, net inflows (BoP, current US$)"

gen id = _n
order id
reshape long YR , i(id) j(year)
replace YR = "." if YR == ".."
destring, replace
rename YR fdiin
rename CountryName country
rename CountryCode countrycode
drop SeriesCode
drop SeriesName

do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset COW codes Do.do"
do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset Pruning Do.do"
save "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\FDIin.dta"
clear
***************************************************************************************
***************************************************************************************
*Constructing Foreign direct investment net
import excel "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\P_Popular Indicators.xlsx", sheet("Data") firstrow
drop if SeriesName != "Foreign direct investment, net (BoP, current US$)"

gen id = _n
order id
reshape long YR , i(id) j(year)
replace YR = "." if YR == ".."
destring, replace
rename YR fdinet
rename CountryName country
rename CountryCode countrycode
drop SeriesCode
drop SeriesName

do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset COW codes Do.do"
do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset Pruning Do.do"
save "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\FDInet.dta"
clear
***************************************************************************************
***************************************************************************************
*Constructing V-dem
import excel "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\V-Dem-CY-Core-v14.xlsx", sheet("V-Dem-CY-Core-v14") firstrow

keep v2x_egaldem_sd v2x_egaldem v2x_delibdem_sd v2x_delibdem v2x_partipdem_sd v2x_partipdem v2x_libdem_sd v2x_libdem v2x_polyarchy_sd v2x_polyarchy COWcode year country_text_id country_name
rename country_name country
rename COWcode cowcode
rename country_text_id countrycode
rename v2x_delibdem delibdem
rename v2x_egaldem egaldem
rename v2x_libdem libdem
rename v2x_partipdem partipdem
rename v2x_polyarchy polyarchy

do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset Pruning Do.do"
save "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Vdem.dta"
clear
***************************************************************************************
***************************************************************************************
*Constructing kof
import excel "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\qogdata_29_11_2024.xlsx", sheet("Sheet1") firstrow

drop A ccode ccode_qog cname_qog ccodealp version ccodealp_year cname_year
rename cname country
rename ccodecow cowcode
rename dr_ig kof

do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset Pruning Do.do"
save "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\KOF.dta",replace
clear
***************************************************************************************
***************************************************************************************
*Constructing tas
import excel "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\cru-x0.5_timeseries_tas_timeseries_annual_1901-2022_mean_historical_cru_ts4.07_mean.xlsx", sheet("all") firstrow

rename BT YR1970 
rename BU YR1971 
rename BV YR1972 
rename BW YR1973 
rename BX YR1974 
rename BY YR1975 
rename BZ YR1976 
rename CA YR1977 
rename CB YR1978 
rename CC YR1979 
rename CD YR1980 
rename CE YR1981 
rename CF YR1982 
rename CG YR1983 
rename CH YR1984 
rename CI YR1985 
rename CJ YR1986 
rename CK YR1987 
rename CL YR1988 
rename CM YR1989 
rename CN YR1990 
rename CO YR1991 
rename CP YR1992 
rename CQ YR1993 
rename CR YR1994 
rename CS YR1995 
rename CT YR1996 
rename CU YR1997 
rename CV YR1998 
rename CW YR1999 
rename CX YR2000 
rename CY YR2001 
rename CZ YR2002 
rename DA YR2003 
rename DB YR2004 
rename DC YR2005 
rename DD YR2006 
rename DE YR2007 
rename DF YR2008 
rename DG YR2009 
rename DH YR2010 
rename DI YR2011 
rename DJ YR2012 
rename DK YR2013 
rename DL YR2014 
rename DM YR2015 
rename DN YR2016 
rename DO YR2017 
rename DP YR2018
rename DQ YR2019
rename DR YR2020 
rename DS YR2021 
rename DT YR2022

keep code name YR1970 YR1971 YR1972 YR1973 YR1974 YR1975 YR1976 YR1977 YR1978 YR1979 YR1980 YR1981 YR1982 YR1983 YR1984 YR1985 YR1986 YR1987 YR1988 YR1989 YR1990 YR1991 YR1992 YR1993 YR1994 YR1995 YR1996 YR1997 YR1998 YR1999 YR2000 YR2001 YR2002 YR2003 YR2004 YR2005 YR2006 YR2007 YR2008 YR2009 YR2010 YR2011 YR2012 YR2013 YR2014 YR2015 YR2016 YR2017 YR2018 YR2019 YR2020 YR2021 YR2022

gen id = _n
order id
reshape long YR , i(id) j(year)
rename YR tas
rename name country
rename code countrycode
drop if countrycode == "TWN"

do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset COW codes Do.do"
do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset Pruning Do.do"
save "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\TAS.dta"
clear
***************************************************************************************
***************************************************************************************
*Constructing Human Capital
use "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\PWT1001.dta"

keep countrycode country year hc

do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset COW codes Do.do"
do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset Pruning Do.do"
save "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\HumanCapital.dta"
clear
***************************************************************************************
***************************************************************************************
*Constructing Average Rainfall Depth
import excel "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\API_AG.LND.PRCP.MM_DS2_en_excel_v2_340.xls", sheet("Data") cellrange(A4:BP270) firstrow

rename O YR1970 
rename P YR1971 
rename Q YR1972 
rename R YR1973 
rename S YR1974 
rename T YR1975 
rename U YR1976 
rename V YR1977 
rename W YR1978 
rename X YR1979 
rename Y YR1980 
rename Z YR1981 
rename AA YR1982 
rename AB YR1983 
rename AC YR1984 
rename AD YR1985 
rename AE YR1986 
rename AF YR1987 
rename AG YR1988 
rename AH YR1989 
rename AI YR1990 
rename AJ YR1991 
rename AK YR1992 
rename AL YR1993 
rename AM YR1994 
rename AN YR1995 
rename AO YR1996 
rename AP YR1997 
rename AQ YR1998 
rename AR YR1999 
rename AS YR2000 
rename AT YR2001 
rename AU YR2002 
rename AV YR2003 
rename AW YR2004 
rename AX YR2005 
rename AY YR2006 
rename AZ YR2007 
rename BA YR2008 
rename BB YR2009 
rename BC YR2010 
rename BD YR2011 
rename BE YR2012 
rename BF YR2013 
rename BG YR2014 
rename BH YR2015 
rename BI YR2016 
rename BJ YR2017 
rename BK YR2018
rename BL YR2019
rename BM YR2020 
rename BN YR2021 
rename BO YR2022
rename BP YR2023

gen id = _n
order id
reshape long YR , i(id) j(year)
rename YR raindpth
rename CountryName country
rename CountryCode countrycode
keep country countrycode id year raindpth

do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset COW codes Do.do"
do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset Pruning Do.do"
save "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\AverageRainfallDepth.dta"
clear
***************************************************************************************
***************************************************************************************
*Constructing Ruggedness
import excel "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\terrain-ruggedness-index.xlsx", sheet("terrain-ruggedness-index") firstrow

rename Entity country
rename Code countrycode
drop Year
destring TerrainRuggednessIndex100mN, replace
rename TerrainRuggednessIndex100mN ruggedind

do "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Dataset COW codes Do.do"

replace country= "delete" if (cowcode != 700) & (cowcode!= 615) & (cowcode!= 540) & (cowcode!= 58) & (cowcode!= 160) & (cowcode!= 371) & (cowcode!= 373) & (cowcode!= 31) & (cowcode!= 692) & (cowcode!= 771) & (cowcode!= 53) & (cowcode!= 80) & (cowcode!= 434) & (cowcode!= 760) & (cowcode!= 145) & (cowcode!= 571) & (cowcode!= 140) & (cowcode!= 835) & (cowcode!= 439) & (cowcode!= 516) & (cowcode!= 402) & (cowcode!= 811) & (cowcode!= 471) & (cowcode!= 482) & (cowcode!= 483) & (cowcode!= 155) & (cowcode!= 710) & (cowcode!= 997) & (cowcode!= 996) & (cowcode!= 100) & (cowcode!= 581) & (cowcode!= 484) & (cowcode!= 94) & (cowcode!= 437) & (cowcode!= 40) & (cowcode!= 731) & (cowcode!= 490) & (cowcode!= 522) & (cowcode!= 54) & (cowcode!= 42) & (cowcode!= 130) & (cowcode!= 651) & (cowcode!= 92) & (cowcode!= 411) & (cowcode!= 531) & (cowcode!= 572) & (cowcode!= 530) & (cowcode!= 950) & (cowcode!= 481) & (cowcode!= 420) & (cowcode!= 372) & (cowcode!= 452) & (cowcode!= 55) & (cowcode!= 90) & (cowcode!= 438) & (cowcode!= 404) & (cowcode!= 110) & (cowcode!= 41) & (cowcode!= 91) & (cowcode!= 750) & (cowcode!= 850) & (cowcode!= 630) & (cowcode!= 645) & (cowcode!= 51) & (cowcode!= 663) & (cowcode!= 705) & (cowcode!= 501) & (cowcode!= 946) & (cowcode!= 690) & (cowcode!= 703) & (cowcode!= 812) & (cowcode!= 660) & (cowcode!= 570) & (cowcode!= 450) & (cowcode!= 620) & (cowcode!= 580) & (cowcode!= 553) & (cowcode!= 820) & (cowcode!= 781) & (cowcode!= 432) & (cowcode!= 983) & (cowcode!= 435) & (cowcode!= 590) & (cowcode!= 70) & (cowcode!= 987) & (cowcode!= 712) & (cowcode!= 600) & (cowcode!= 541) & (cowcode!= 775) & (cowcode!= 565) & (cowcode!= 970) & (cowcode!= 790) & (cowcode!= 93) & (cowcode!= 436) & (cowcode!= 475) & (cowcode!= 698) & (cowcode!= 770) & (cowcode!= 986) & (cowcode!= 95) & (cowcode!= 910) & (cowcode!= 150) & (cowcode!= 135) & (cowcode!= 840) & (cowcode!= 694) & (cowcode!= 517) & (cowcode!= 60) & (cowcode!= 56) & (cowcode!= 57) & (cowcode!= 990) & (cowcode!= 403) & (cowcode!= 670) & (cowcode!= 433) & (cowcode!= 591) & (cowcode!= 451) & (cowcode!= 830) & (cowcode!= 940) & (cowcode!= 520) & (cowcode!= 560) & (cowcode!= 626) & (cowcode!= 780) & (cowcode!= 625) & (cowcode!= 115) & (cowcode!= 652) & (cowcode!= 702) & (cowcode!= 800) & (cowcode!= 860) & (cowcode!= 461) & (cowcode!= 955) & (cowcode!= 52) & (cowcode!= 616) & (cowcode!= 640) & (cowcode!= 701) & (cowcode!= 947) & (cowcode!= 500) & (cowcode!= 696) & (cowcode!= 510) & (cowcode!= 165) & (cowcode!= 704) & (cowcode!= 935) & (cowcode!= 101) & (cowcode!= 816) & (cowcode!= 998) & (cowcode!= 678) & (cowcode!= 551) & (cowcode!= 552)
drop if country== "delete"
sort cowcode

save "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Ruggedness.dta"
clear
***************************************************************************************
***************************************************************************************
