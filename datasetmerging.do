***************************************************************************************
***************************************************************************************
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
***************************************************************************************
***************************************************************************************
*cleaning dataset
drop id
sort cowcode year

*generating explanatory variables for use
gen landlocked = 0
replace landlocked = 1 if cowcode == 700 | cowcode== 371 | cowcode== 373 | cowcode== 760 | cowcode== 145 | cowcode== 571 | cowcode== 439 | cowcode== 516 | cowcode== 482 | cowcode== 483 | cowcode== 572 | cowcode== 530 | cowcode== 705 | cowcode== 703 | cowcode== 812 | cowcode== 570 | cowcode== 343 | cowcode== 553 | cowcode== 432 | cowcode== 712 | cowcode== 790 | cowcode== 436 | cowcode== 150 | cowcode== 359 | cowcode== 517 | cowcode== 626 | cowcode== 702 | cowcode== 701 | cowcode== 500 | cowcode== 704 | cowcode== 551 | cowcode== 552
gen fdiperin = fdiin / GdpCurrent
gen fdipernet = fdinet / GdpCurrent
gen tradeopenness = Exports + Imports
***************************************************************************************
***************************************************************************************
*generating continental dummies
gen AfricaDum = 0
replace AfricaDum = 1 if cowcode == 402 | cowcode== 403 | cowcode== 404 | cowcode== 411 | cowcode== 420 | cowcode== 432 | cowcode== 433 | cowcode== 434 | cowcode== 435 | cowcode== 436 | cowcode== 437 | cowcode== 438 | cowcode== 439 | cowcode== 450 | cowcode== 451 | cowcode== 452 | cowcode== 461 | cowcode== 471 | cowcode== 475 | cowcode== 481 | cowcode== 482 | cowcode== 483 | cowcode== 484 | cowcode== 490 | cowcode== 500 | cowcode== 501 | cowcode== 510 | cowcode== 516 | cowcode== 517 | cowcode== 520 | cowcode== 522 | cowcode== 530 | cowcode== 531 | cowcode== 540 | cowcode== 541 | cowcode== 551 | cowcode== 552 | cowcode== 553 | cowcode== 560 | cowcode== 565 | cowcode== 570 | cowcode== 571 | cowcode== 572 | cowcode== 580 | cowcode== 581 | cowcode== 590 | cowcode== 591 | cowcode== 600 | cowcode== 615 | cowcode== 616 | cowcode== 620 | cowcode== 625 | cowcode== 626 | cowcode== 651
gen AsiaDum = 0
replace AsiaDum = 1 if cowcode == 371 | cowcode== 372 | cowcode== 373 | cowcode== 630 | cowcode== 640 | cowcode== 645 | cowcode== 652 | cowcode== 660 | cowcode== 663 | cowcode== 670 | cowcode== 678 | cowcode== 690 | cowcode== 692 | cowcode== 694 | cowcode== 696 | cowcode== 698 | cowcode== 700 | cowcode== 701 | cowcode== 702 | cowcode== 703 | cowcode== 704 | cowcode== 705 | cowcode== 710 | cowcode== 712 | cowcode== 731 | cowcode== 750 | cowcode== 760 | cowcode== 770 | cowcode== 771 | cowcode== 775 | cowcode== 780 | cowcode== 781 | cowcode== 790 | cowcode== 800 | cowcode== 811 | cowcode== 812 | cowcode== 816 | cowcode== 820 | cowcode== 830 | cowcode== 835 | cowcode== 840 | cowcode== 850 | cowcode== 860 | cowcode== 996 | cowcode== 997 | cowcode== 998
gen AmericaDum = 0
replace AmericaDum = 1 if cowcode == 31 | cowcode== 40 | cowcode== 41 | cowcode== 42 | cowcode== 51 | cowcode== 52 | cowcode== 53 | cowcode== 54 | cowcode== 55 | cowcode== 56 | cowcode== 57 | cowcode== 58 | cowcode== 60 | cowcode== 70 | cowcode== 80 | cowcode== 90 | cowcode== 91 | cowcode== 92 | cowcode== 93 | cowcode== 94 | cowcode== 95 | cowcode== 100 | cowcode== 101 | cowcode== 110 | cowcode== 115 | cowcode== 130 | cowcode== 135 | cowcode== 140 | cowcode== 145 | cowcode== 150 | cowcode== 155 | cowcode== 160 | cowcode== 165
gen OceaniaDum = 0
replace OceaniaDum = 1 if cowcode == 910 | cowcode== 935 | cowcode== 940 | cowcode== 946 | cowcode== 947 | cowcode== 950 | cowcode== 955 | cowcode== 970 | cowcode== 983 | cowcode== 986 | cowcode== 987 | cowcode== 990

save "C:\Users\adamj\OneDrive - University of Reading\Dissertation Dataset\growthdataset.dta"
***************************************************************************************
***************************************************************************************
