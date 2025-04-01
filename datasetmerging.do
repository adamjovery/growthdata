*import master dataset
use "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\GdpGrowth.dta"

*merge each dataset into the master
merge 1:1 cowcode year using "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\GdpCurrent.dta", nogenerate

merge 1:1 cowcode year using "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\GdpPerCapita.dta", nogenerate

merge 1:1 cowcode year using "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Exports.dta", nogenerate

merge 1:1 cowcode year using "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Imports.dta", nogenerate

merge 1:1 cowcode year using "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\MerchandiseTrade.dta", nogenerate

merge 1:1 cowcode year using "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\PopulationGrowth.dta", nogenerate

merge 1:1 cowcode year using "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\PrimaryEducation.dta", nogenerate

merge 1:1 cowcode year using "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\SecondaryEducation.dta", nogenerate

merge 1:1 cowcode year using "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\FDIin.dta", nogenerate

merge 1:1 cowcode year using "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\FDInet.dta", nogenerate

merge 1:1 cowcode year using "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\TAS.dta", nogenerate

merge 1:1 cowcode year using "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\KOF.dta", nogenerate

merge 1:1 cowcode year using "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Vdem.dta", nogenerate

merge 1:1 cowcode year using "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\HumanCapital.dta", nogenerate

merge 1:1 cowcode year using "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\AverageRainfallDepth.dta", nogenerate

merge m:1 cowcode using "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\Ruggedness.dta", nogenerate

*drop useless variables
drop id
sort cowcode year

*generating variables for use
gen landlocked = 0
replace landlocked = 1 if cowcode == 700 | cowcode== 371 | cowcode== 373 | cowcode== 760 | cowcode== 145 | cowcode== 571 | cowcode== 439 | cowcode== 516 | cowcode== 482 | cowcode== 483 | cowcode== 572 | cowcode== 530 | cowcode== 705 | cowcode== 703 | cowcode== 812 | cowcode== 570 | cowcode== 343 | cowcode== 553 | cowcode== 432 | cowcode== 712 | cowcode== 790 | cowcode== 436 | cowcode== 150 | cowcode== 359 | cowcode== 517 | cowcode== 626 | cowcode== 702 | cowcode== 701 | cowcode== 500 | cowcode== 704 | cowcode== 551 | cowcode== 552
gen fdiperin = fdiin / GdpCurrent
gen fdipernet = fdinet / GdpCurrent
gen tradeopenness = Exports + Imports

save "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\growthdataset.dta"