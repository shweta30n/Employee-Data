library(readxl)

library(tidyr)
R_Test_amp_Case_study <- read_excel("R Test &amp; Case study.xlsx", 
                                    sheet = "Question 1", range = "b7:d19")
View(R_Test_amp_Case_study)
##spliting variable by different functions
R2 <-R_Test_amp_Case_study[1:5, ]
R3 <-R_Test_amp_Case_study[6:12, ]

set.seed(37645)
dummy_sep <-rbinom(nrow(R_Test_amp_Case_study),1, 0.5)
########
R4 <- R_Test_amp_Case_study[dummy_sep == 0, ]
R4
R5 <- R_Test_amp_Case_study[dummy_sep ==1, ]
R5

R6 <- R_Test_amp_Case_study[ ,c("f2f", "email")]
R6
#####
#######spliting variable  by month, year date and email

R6a <- separate(R_Test_amp_Case_study,col = date,into = c("year","Month","Day"),sep ="-")
f2f_p1<- replace(R_Test_amp_Case_study$f2f, R_Test_amp_Case_study$f2f<3600, 0)
email_p1<- replace(R_Test_amp_Case_study$email, R_Test_amp_Case_study$email<5500, 0)

DF_R <-data.frame(f2f_p1,email_p1)

DF_R1 <-cbind(R6a,DF_R)
DF_R1
#################

  


 









date<- c("1-jan-19","2-jan-19","3-jan-19","4-jan-19","5-jan-19","6-jan-19","7-jan-19","8-jan-19","9-jan-19","10-jan-19","11-jan-19","12-jan-19")
f2f <-c(0,0,0,0,0,0,0,0,0,0,0,0)
email <-c(0,0,0,0,0,0,0,0,0,0,0,0)


#R_test = left join
# df2 = right join

R_Test_amp_Case_study %>%
  inner_join(df2, by = "date")

 df3<- cbind(R_Test_amp_Case_study, df2)

df2 <-data.frame(date,f2f,email)


library(padr)


R_Test_amp_Case_study %>%
  pad(start_val = as.Date("1-jan-19"),
  end_val = as.Date("4-jan-19"),
   %>%
  fill_by_value(zero)
  
     


data_n <- R_Test_amp_Case_study
data_n$f2f_p1 <- data_n$f2f +






R_Test_amp_Case_study %>%
  select(f2f)
