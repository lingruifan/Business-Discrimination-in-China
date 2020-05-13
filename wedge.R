library(tidyverse)
firm98 <- read_csv("firm98.csv")
firm99 <- read_csv("firm99.csv")
firm00 <- read_csv("firm00.csv")
firm01 <- read_csv("firm01.csv")
firm02 <- read_csv("firm02.csv")
firm03 <- read_csv("firm03.csv")
firm04 <- read_csv("firm04.csv")
firm05 <- read_csv("firm05.csv")
firm06 <- read_csv("firm06.csv")
firm07 <- read_csv("firm07.csv")
firm08 <- read_csv("firm08.csv")
firm09 <- read_csv("firm09.csv")
firm10 <- read_csv("firm10.csv")
firm11 <- read_csv("firm11.csv")
firm12 <- read_csv("firm12.csv")
firm13 <- read_csv("firm13.csv")

firm98$ow <- (1/(1-0.592412769794464))*(firm98$wage/abs(firm98$va))
firm98$cw <- (0.592412769794464/(1-0.592412769794464))*(firm98$wage/(firm98$capital*0.065))
firm98$type_code <- ifelse(firm98$type%/%10 < 17, 1, ifelse(firm98$type%/%10 == 17, 2, ifelse(firm98$type%/%100 == 2, 3, ifelse(firm98$type%/%100 == 3, 4, 5))))
firm98$dispersion <- firm98$cw^0.592412769794464/firm98$ow
write_csv(firm98, "~/Desktop/CHN firms data/wedges/firm98.csv")

firm99$ow <- (1/(1-0.606276869773865))*(firm99$wage/abs(firm99$va))
firm99$cw <- (0.606276869773865/(1-0.606276869773865))*(firm99$wage/(firm99$capital*0.065))
firm99$type_code <- ifelse(firm99$type%/%10 < 17, 1, ifelse(firm99$type%/%10 == 17, 2, ifelse(firm99$type%/%100 == 2, 3, ifelse(firm99$type%/%100 == 3, 4, 5))))
firm99$dispersion <- firm99$cw^0.606276869773865/firm99$ow
write_csv(firm99, "~/Desktop/CHN firms data/wedges/firm99.csv")

firm00$ow <- (1/(1-0.591961801052094))*(firm00$wage/abs(firm00$va))
firm00$cw <- (0.591961801052094/(1-0.591961801052094))*(firm00$wage/(firm00$capital*0.065))
firm00$type_code <- ifelse(firm00$type%/%10 < 17, 1, ifelse(firm00$type%/%10 == 17, 2, ifelse(firm00$type%/%100 == 2, 3, ifelse(firm00$type%/%100 == 3, 4, 5))))
firm00$dispersion <- firm00$cw^0.591961801052094/firm00$ow
write_csv(firm00, "~/Desktop/CHN firms data/wedges/firm00.csv")

firm01$ow <- (1/(1-0.588033199310303))*(firm01$wage/(abs(firm01$taxva)/0.11))
firm01$cw <- (0.588033199310303/(1-0.588033199310303))*(firm01$wage/(firm01$capital*0.065))
firm01$type_code <- ifelse(firm01$type%/%10 < 17, 1, ifelse(firm01$type%/%10 == 17, 2, ifelse(firm01$type%/%100 == 2, 3, ifelse(firm01$type%/%100 == 3, 4, 5))))
firm01$dispersion <- firm01$cw^0.588033199310303/firm01$ow
write_csv(firm01, "~/Desktop/CHN firms data/wedges/firm01.csv")

firm02$ow <- (1/(1-0.60328334569931))*(firm02$wage/(abs(firm02$taxva)/0.11))
firm02$cw <- (0.60328334569931/(1-0.60328334569931))*(firm02$wage/(firm02$capital*0.065))
firm02$state <- ifelse(firm02$type%/%10 < 17, 1, 0)
firm02$private <- ifelse(firm02$type%/%10 == 17, 1, 0)
firm02$hmt <- ifelse(firm02$type%/%100 == 2, 1, 0)
firm02$foreign <- ifelse(firm02$type%/%100 == 3, 1, 0)
firm02$other <- ifelse(firm02$type%/%10 == 19, 1, 0)
firm02$dispersion <- firm02$cw^0.60328334569931/firm02$ow
write_csv(firm02, "~/Desktop/CHN firms data/wedges/firm02.csv")

firm03$ow <- (1/(1-0.598127961158752))*(firm03$wage/(abs(firm03$taxva)/0.11))
firm03$cw <- (0.598127961158752/(1-0.598127961158752))*(firm03$wage/(firm03$capital*0.065))
firm03$type_code <- ifelse(firm03$type%/%10 < 17, 1, ifelse(firm03$type%/%10 == 17, 2, ifelse(firm03$type%/%100 == 2, 3, ifelse(firm03$type%/%100 == 3, 4, 5))))
firm03$dispersion <- firm03$cw^0.598127961158752/firm03$ow
firm03$state <- ifelse(firm03$type%/%10 < 17, 1, 0)
firm03$private <- ifelse(firm03$type%/%10 == 17, 1, 0)
firm03$hmt <- ifelse(firm03$type%/%100 == 2, 1, 0)
firm03$foreign <- ifelse(firm03$type%/%100 == 3, 1, 0)
firm03$other <- ifelse(firm03$type%/%10 == 19, 1, 0)
write_csv(firm03, "~/Desktop/CHN firms data/wedges/firm03.csv")

firm04$ow <- (1/(1-0.572884440422058))*(firm04$wage/(abs(firm04$taxva)/0.11))
firm04$cw <- (0.572884440422058/(1-0.572884440422058))*(firm04$wage/(firm04$capital*0.065))
firm04$type_code <- ifelse(firm04$type%/%10 < 17, 1, ifelse(firm04$type%/%10 == 17, 2, ifelse(firm04$type%/%100 == 2, 3, ifelse(firm04$type%/%100 == 3, 4, 5))))
firm04$dispersion <- firm04$cw^0.572884440422058/firm04$ow
firm04$state <- ifelse(firm04$type%/%10 < 17, 1, 0)
firm04$private <- ifelse(firm04$type%/%10 == 17, 1, 0)
firm04$hmt <- ifelse(firm04$type%/%100 == 2, 1, 0)
firm04$foreign <- ifelse(firm04$type%/%100 == 3, 1, 0)
firm04$other <- ifelse(firm04$type%/%10 == 19, 1, 0)
write_csv(firm04, "~/Desktop/CHN firms data/wedges/firm04.csv")

firm05$ow <- (1/(1-0.568218588829041))*(firm05$wage/(abs(firm05$taxva)/0.11))
firm05$cw <- (0.568218588829041/(1-0.568218588829041))*(firm05$wage/(firm05$capital*0.065))
firm05$type_code <- ifelse(firm05$type%/%10 < 17, 1, ifelse(firm05$type%/%10 == 17, 2, ifelse(firm05$type%/%100 == 2, 3, ifelse(firm05$type%/%100 == 3, 4, 5))))
firm05$dispersion <- firm05$cw^0.568218588829041/firm05$ow
firm05$state <- ifelse(firm05$type%/%10 < 17, 1, 0)
firm05$private <- ifelse(firm05$type%/%10 == 17, 1, 0)
firm05$hmt <- ifelse(firm05$type%/%100 == 2, 1, 0)
firm05$foreign <- ifelse(firm05$type%/%100 == 3, 1, 0)
firm05$other <- ifelse(firm05$type%/%10 == 19, 1, 0)
write_csv(firm05, "~/Desktop/CHN firms data/wedges/firm05.csv")

firm06$ow <- (1/(1-0.557359457015991))*(firm06$wage/(abs(firm06$taxva)/0.11))
firm06$cw <- (0.557359457015991/(1-0.557359457015991))*(firm06$wage/(firm06$capital*0.065))
firm06$type_code <- ifelse(firm06$type%/%10 < 17, 1, ifelse(firm06$type%/%10 == 17, 2, ifelse(firm06$type%/%100 == 2, 3, ifelse(firm06$type%/%100 == 3, 4, 5))))
firm06$dispersion <- firm06$cw^0.557359457015991/firm06$ow
firm06$state <- ifelse(firm06$type%/%10 < 17, 1, 0)
firm06$private <- ifelse(firm06$type%/%10 == 17, 1, 0)
firm06$hmt <- ifelse(firm06$type%/%100 == 2, 1, 0)
firm06$foreign <- ifelse(firm06$type%/%100 == 3, 1, 0)
firm06$other <- ifelse(firm06$type%/%10 == 19, 1, 0)
write_csv(firm06, "~/Desktop/CHN firms data/wedges/firm06.csv")

firm07$ow <- (1/(1-0.553081929683685))*(firm07$wage/(abs(firm07$taxva)/0.11))
firm07$cw <- (0.553081929683685/(1-0.553081929683685))*(firm07$wage/(firm07$capital*0.065))
firm07$type_code <- ifelse(firm07$type%/%10 < 17, 1, ifelse(firm07$type%/%10 == 17, 2, ifelse(firm07$type%/%100 == 2, 3, ifelse(firm07$type%/%100 == 3, 4, 5))))
firm07$dispersion <- firm07$cw^0.553081929683685/firm07$ow
firm07$state <- ifelse(firm07$type%/%10 < 17, 1, 0)
firm07$private <- ifelse(firm07$type%/%10 == 17, 1, 0)
firm07$hmt <- ifelse(firm07$type%/%100 == 2, 1, 0)
firm07$foreign <- ifelse(firm07$type%/%100 == 3, 1, 0)
firm07$other <- ifelse(firm07$type%/%10 == 19, 1, 0)
write_csv(firm07, "~/Desktop/CHN firms data/wedges/firm07.csv")

firm08$ow <- (1/(1-0.552076101303101))*(firm08$wage/(abs(firm08$taxva)/0.15))
firm08$cw <- (0.552076101303101/(1-0.552076101303101))*(firm08$wage/(firm08$capital*0.065))
firm08$type_code <- ifelse(firm08$type%/%10 < 17, 1, ifelse(firm08$type%/%10 == 17, 2, ifelse(firm08$type%/%100 == 2, 3, ifelse(firm08$type%/%100 == 3, 4, 5))))
firm08$dispersion <- firm08$cw^0.552076101303101/firm08$ow
firm08$state <- ifelse(firm08$type%/%10 < 17, 1, 0)
firm08$private <- ifelse(firm08$type%/%10 == 17, 1, 0)
firm08$hmt <- ifelse(firm08$type%/%100 == 2, 1, 0)
firm08$foreign <- ifelse(firm08$type%/%100 == 3, 1, 0)
firm08$other <- ifelse(firm08$type%/%10 == 19, 1, 0)
write_csv(firm08, "~/Desktop/CHN firms data/wedges/firm08.csv")

firm09 <- full_join(firm09_1, firm09_2)
firm09$ow <- (1/(1-0.552654504776001))*((18364*firm09$emp)/(abs(firm09$taxva)/0.15))
firm09$cw <- (0.552654504776001/(1-0.552654504776001))*((18364*firm09$emp)/(firm09$capital*0.065))
firm09$type_code <- ifelse(firm09$type%/%10 < 17, 1, ifelse(firm09$type%/%10 == 17, 2, ifelse(firm09$type%/%100 == 2, 3, ifelse(firm09$type%/%100 == 3, 4, 5))))
firm09$dispersion <- firm09$cw^0.552654504776001/firm09$ow
firm09$state <- ifelse(firm09$type%/%10 < 17, 1, 0)
firm09$private <- ifelse(firm09$type%/%10 == 17, 1, 0)
firm09$hmt <- ifelse(firm09$type%/%100 == 2, 1, 0)
firm09$foreign <- ifelse(firm09$type%/%100 == 3, 1, 0)
firm09$other <- ifelse(firm09$type%/%10 == 19, 1, 0)
write_csv(firm09, "~/Desktop/CHN firms data/wedges/firm09.csv")

firm10$ow <- (1/(1-0.548255085945129))*((21033*firm10$emp)/(abs(firm10$taxva)/0.15))
firm10$cw <- (0.548255085945129/(1-0.548255085945129))*((21033*firm10$emp)/(firm10$capital*0.065))
firm10$type_code <- ifelse(firm10$type%/%10 < 17, 1, ifelse(firm10$type%/%10 == 17, 2, ifelse(firm10$type%/%100 == 2, 3, ifelse(firm10$type%/%100 == 3, 4, 5))))
firm10$dispersion <- firm10$cw^0.548255085945129/firm10$ow
firm10$state <- ifelse(firm10$type%/%10 < 17, 1, 0)
firm10$private <- ifelse(firm10$type%/%10 == 17, 1, 0)
firm10$hmt <- ifelse(firm10$type%/%100 == 2, 1, 0)
firm10$foreign <- ifelse(firm10$type%/%100 == 3, 1, 0)
firm10$other <- ifelse(firm10$type%/%10 == 19, 1, 0)
write_csv(firm10, "~/Desktop/CHN firms data/wedges/firm10.csv")

firm11$ow <- (1/(1-0.549982845783234))*(firm11$wage/(abs(firm11$taxva)/0.15))
firm11$cw <- (0.549982845783234/(1-0.549982845783234))*(firm11$wage/(firm11$capital*0.065))
firm11$type_code <- ifelse(firm11$type%/%10 < 17, 1, ifelse(firm11$type%/%10 == 17, 2, ifelse(firm11$type%/%100 == 2, 3, ifelse(firm11$type%/%100 == 3, 4, 5))))
firm11$dispersion <- firm11$cw^0.549982845783234/firm11$ow
firm11$state <- ifelse(firm11$type%/%10 < 17, 1, 0)
firm11$private <- ifelse(firm11$type%/%10 == 17, 1, 0)
firm11$hmt <- ifelse(firm11$type%/%100 == 2, 1, 0)
firm11$foreign <- ifelse(firm11$type%/%100 == 3, 1, 0)
firm11$other <- ifelse(firm11$type%/%10 == 19, 1, 0)
write_csv(firm11, "~/Desktop/CHN firms data/wedges/firm11.csv")

firm12$ow <- (1/(1-0.560339987277985))*(firm12$wage/(abs(firm12$taxva)/0.15))
firm12$cw <- (0.560339987277985/(1-0.560339987277985))*(firm12$wage/(firm12$capital*0.065))
firm12$type_code <- ifelse(firm12$type%/%10 < 17, 1, ifelse(firm12$type%/%10 == 17, 2, ifelse(firm12$type%/%100 == 2, 3, ifelse(firm12$type%/%100 == 3, 4, 5))))
firm12$dispersion <- firm12$cw^0.560339987277985/firm12$ow
firm12$state <- ifelse(firm12$type%/%10 < 17, 1, 0)
firm12$private <- ifelse(firm12$type%/%10 == 17, 1, 0)
firm12$hmt <- ifelse(firm12$type%/%100 == 2, 1, 0)
firm12$foreign <- ifelse(firm12$type%/%100 == 3, 1, 0)
firm12$other <- ifelse(firm12$type%/%10 == 19, 1, 0)
write_csv(firm12, "~/Desktop/CHN firms data/wedges/firm12.csv")

firm13$ow <- (1/(1-0.571143865585327))*(firm13$wage/(abs(firm13$taxva)/0.15))
firm13$cw <- (0.571143865585327/(1-0.571143865585327))*(firm13$wage/(firm13$capital*0.065))
firm13$type_code <- ifelse(firm13$type%/%10 < 17, 1, ifelse(firm13$type%/%10 == 17, 2, ifelse(firm13$type%/%100 == 2, 3, ifelse(firm13$type%/%100 == 3, 4, 5))))
firm13$dispersion <- firm13$cw^0.571143865585327/firm13$ow
write_csv(firm13, "~/Desktop/CHN firms data/wedges/firm13.csv")

