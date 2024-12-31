Players<-255

##Set Up How Many Players Belong to Each of These Group Sizes##

#
Starting_Conditions<-data.frame((1:1000),round(runif(1000,3,7)),round(2*runif(1000,7,13)),round(3*runif(1000,18,25)),round(4*runif(1000,18,25)),round(5*runif(1000,18,25)),round(6*runif(1000,15,21)),round(7*runif(1000,3,7)))
#
colnames(Starting_Conditions)<-c('Trial#','GroupsOf1','GroupsOf2','GroupsOf3','GroupsOf4','GroupsOf5','GroupsOf6','GroupsOf7')
Starting_Conditions$TotalPlayers<-Starting_Conditions$GroupsOf1+Starting_Conditions$GroupsOf2+Starting_Conditions$GroupsOf3+Starting_Conditions$GroupsOf4+Starting_Conditions$GroupsOf5+Starting_Conditions$GroupsOf6++Starting_Conditions$GroupsOf7
Starting_Conditions$GroupsOf1<-round(Starting_Conditions$GroupsOf1*Players/Starting_Conditions$TotalPlayers)
Starting_Conditions$GroupsOf2<-round(round(Starting_Conditions$GroupsOf2*Players/Starting_Conditions$TotalPlayers)/2)*2
Starting_Conditions$GroupsOf3<-round(round(Starting_Conditions$GroupsOf3*Players/Starting_Conditions$TotalPlayers)/3)*3
Starting_Conditions$GroupsOf4<-round(round(Starting_Conditions$GroupsOf4*Players/Starting_Conditions$TotalPlayers)/4)*4
Starting_Conditions$GroupsOf5<-round(round(Starting_Conditions$GroupsOf5*Players/Starting_Conditions$TotalPlayers)/5)*5
Starting_Conditions$GroupsOf6<-round(round(Starting_Conditions$GroupsOf6*Players/Starting_Conditions$TotalPlayers)/6)*6
Starting_Conditions$GroupsOf7<-round(round(Starting_Conditions$GroupsOf7*Players/Starting_Conditions$TotalPlayers)/7)*7
Starting_Conditions$TotalPlayers<-Starting_Conditions$GroupsOf1+Starting_Conditions$GroupsOf2+Starting_Conditions$GroupsOf3+Starting_Conditions$GroupsOf4+Starting_Conditions$GroupsOf5+Starting_Conditions$GroupsOf6++Starting_Conditions$GroupsOf7
Starting_Conditions$GroupsOf2<-Starting_Conditions$GroupsOf2/2
Starting_Conditions$GroupsOf3<-Starting_Conditions$GroupsOf3/3
Starting_Conditions$GroupsOf4<-Starting_Conditions$GroupsOf4/4
Starting_Conditions$GroupsOf5<-Starting_Conditions$GroupsOf5/5
Starting_Conditions$GroupsOf6<-Starting_Conditions$GroupsOf6/6
Starting_Conditions$GroupsOf7<-Starting_Conditions$GroupsOf7/7


##Set Up Call Conditions##


Call3<-data.frame((1:1000),(1:1),(1:1),(1:1))
colnames(Call3)<-c('Trial#','Cleared_Off_Players','StragglerGroupsOf1','StragglerGroupsOf2')
Call4<-data.frame((1:1000),(1:1),(1:1),(1:1),(1:1))
colnames(Call4)<-c('Trial#','Cleared_Off_Players','StragglerGroupsOf1','StragglerGroupsOf2','StragglerGroupsOf3')
Call5<-data.frame((1:1000),(1:1),(1:1),(1:1),(1:1),(1:1))
colnames(Call5)<-c('Trial#','Cleared_Off_Players','StragglerGroupsOf1','StragglerGroupsOf2','StragglerGroupsOf3','StragglerGroupsOf4')
Call6<-data.frame((1:1000),(1:1),(1:1),(1:1),(1:1),(1:1),(1:1))
colnames(Call6)<-c('Trial#','Cleared_Off_Players','StragglerGroupsOf1','StragglerGroupsOf2','StragglerGroupsOf3','StragglerGroupsOf4','StragglerGroupsOf5')
Call7<-data.frame((1:1000),(1:1),(1:1),(1:1),(1:1),(1:1),(1:1),(1:1))
colnames(Call7)<-c('Trial#','Cleared_Off_Players','StragglerGroupsOf1','StragglerGroupsOf2','StragglerGroupsOf3','StragglerGroupsOf4','StragglerGroupsOf5','StragglerGroupsOf6')
Call8<-data.frame((1:1000),(1:1),(1:1),(1:1),(1:1),(1:1),(1:1),(1:1),(1:1))
colnames(Call8)<-c('Trial#','Cleared_Off_Players','StragglerGroupsOf1','StragglerGroupsOf2','StragglerGroupsOf3','StragglerGroupsOf4','StragglerGroupsOf5','StragglerGroupsOf6','StragglerGroupsOf7')
Call9<-data.frame((1:1000),(1:1),(1:1),(1:1),(1:1),(1:1),(1:1),(1:1),(1:1))
colnames(Call9)<-c('Trial#','Cleared_Off_Players','StragglerGroupsOf1','StragglerGroupsOf2','StragglerGroupsOf3','StragglerGroupsOf4','StragglerGroupsOf5','StragglerGroupsOf6','StragglerGroupsOf7')
Call10<-data.frame((1:1000),(1:1),(1:1),(1:1),(1:1),(1:1),(1:1),(1:1),(1:1))
colnames(Call10)<-c('Trial#','Cleared_Off_Players','StragglerGroupsOf1','StragglerGroupsOf2','StragglerGroupsOf3','StragglerGroupsOf4','StragglerGroupsOf5','StragglerGroupsOf6','StragglerGroupsOf7')

Call3<-merge(Call3,Starting_Conditions,by='Trial#')
Call4<-merge(Call4,Starting_Conditions,by='Trial#')
Call5<-merge(Call5,Starting_Conditions,by='Trial#')
Call6<-merge(Call6,Starting_Conditions,by='Trial#')
Call7<-merge(Call7,Starting_Conditions,by='Trial#')
Call8<-merge(Call8,Starting_Conditions,by='Trial#')
Call9<-merge(Call9,Starting_Conditions,by='Trial#')
Call10<-merge(Call10,Starting_Conditions,by='Trial#')

##Call3##
Call3$Cleared_Off_Players=3*Call3$GroupsOf3+6*Call3$GroupsOf6
Call3$StragglerGroupsOf1=Call3$GroupsOf1
Call3$StragglerGroupsOf2=Call3$GroupsOf2
Call3$Cleared_Off_Players=Call3$Cleared_Off_Players+3*Call3$GroupsOf5
Call3$StragglerGroupsOf2=Call3$StragglerGroupsOf2+Call3$GroupsOf5
#
Call3$PercentFair<-round(runif(1000,10,30))/100
#
Call3$GroupsOf4Fair<-round(Call3$GroupsOf4*Call3$PercentFair)
Call3$GroupsOf4Ruthless<-Call3$GroupsOf4-Call3$GroupsOf4Fair
Call3$GroupsOf7Fair<-round(Call3$GroupsOf7*Call3$PercentFair)
Call3$GroupsOf7Ruthless<-Call3$GroupsOf7-Call3$GroupsOf7Fair

Call3$StragglerGroupsOf2=Call3$StragglerGroupsOf2+Call3$GroupsOf4Fair*2
Call3$Cleared_Off_Players=Call3$Cleared_Off_Players+3*Call3$GroupsOf4Ruthless
Call3$StragglerGroupsOf1=Call3$StragglerGroupsOf1+Call3$GroupsOf4Ruthless
Call3$StragglerGroupsOf2=Call3$StragglerGroupsOf2+Call3$GroupsOf7Fair*2
Call3$Cleared_Off_Players=Call3$Cleared_Off_Players+3*Call3$GroupsOf7Fair
Call3$Cleared_Off_Players=Call3$Cleared_Off_Players+3*Call3$GroupsOf7Ruthless*2
Call3$StragglerGroupsOf1=Call3$StragglerGroupsOf1+Call3$GroupsOf7Ruthless

##Call4##
Call4$Cleared_Off_Players=4*Call4$GroupsOf4
Call4$StragglerGroupsOf1=Call4$GroupsOf1
Call4$StragglerGroupsOf2=Call4$GroupsOf2
Call4$StragglerGroupsOf3=Call4$GroupsOf3
Call4$Cleared_Off_Players=Call4$Cleared_Off_Players+4*Call4$GroupsOf7
Call4$StragglerGroupsOf3=Call4$StragglerGroupsOf3+Call4$GroupsOf7
#
Call4$PercentFair<-round(runif(1000,10,30))/100
#
Call4$GroupsOf5Fair<-round(Call4$GroupsOf5*Call4$PercentFair)
Call4$GroupsOf5Ruthless<-Call4$GroupsOf5-Call4$GroupsOf5Fair
Call4$GroupsOf6Fair<-round(Call4$GroupsOf6*Call4$PercentFair)
Call4$GroupsOf6Ruthless<-Call4$GroupsOf6-Call4$GroupsOf6Fair

Call4$StragglerGroupsOf3=Call4$StragglerGroupsOf3+Call4$GroupsOf5Fair
Call4$StragglerGroupsOf2=Call4$StragglerGroupsOf2+Call4$GroupsOf5Fair
Call4$Cleared_Off_Players=Call4$Cleared_Off_Players+4*Call4$GroupsOf5Ruthless
Call4$StragglerGroupsOf1=Call4$StragglerGroupsOf1+Call4$GroupsOf5Ruthless
Call4$StragglerGroupsOf3=Call4$StragglerGroupsOf3+Call4$GroupsOf6Fair*2
Call4$Cleared_Off_Players=Call4$Cleared_Off_Players+4*Call4$GroupsOf6Ruthless
Call4$StragglerGroupsOf2=Call4$StragglerGroupsOf2+Call4$GroupsOf6Ruthless


##Call5##
Call5$Cleared_Off_Players=5*Call5$GroupsOf5
Call5$StragglerGroupsOf1=Call5$GroupsOf1
Call5$StragglerGroupsOf2=Call5$GroupsOf2
Call5$StragglerGroupsOf3=Call5$GroupsOf3
Call5$StragglerGroupsOf4=Call5$GroupsOf4

#
Call5$PercentFair1<-round(runif(1000,5,15))/100
Call5$PercentFair2<-round(runif(1000,5,15))/100
#
Call5$GroupsOf6Fair1<-round(Call5$GroupsOf6*Call5$PercentFair1)
Call5$GroupsOf6Fair2<-round(Call5$GroupsOf6*Call5$PercentFair2)
Call5$GroupsOf6Ruthless<-Call5$GroupsOf6-Call5$GroupsOf6Fair1-Call5$GroupsOf6Fair2
Call5$GroupsOf7Fair<-round(Call5$GroupsOf7*(Call5$PercentFair1+Call5$PercentFair2))
Call5$GroupsOf7Ruthless<-Call5$GroupsOf7-Call5$GroupsOf7Fair

Call5$StragglerGroupsOf3=Call5$StragglerGroupsOf3+2*Call5$GroupsOf6Fair1
Call5$StragglerGroupsOf2=Call5$StragglerGroupsOf2+Call5$GroupsOf6Fair2
Call5$StragglerGroupsOf4=Call5$StragglerGroupsOf4+Call5$GroupsOf6Fair2
Call5$Cleared_Off_Players=Call5$Cleared_Off_Players+5*Call5$GroupsOf6Ruthless
Call5$StragglerGroupsOf1=Call5$StragglerGroupsOf1+Call5$GroupsOf6Ruthless
Call5$StragglerGroupsOf3=Call5$StragglerGroupsOf3+Call5$GroupsOf7Fair
Call5$StragglerGroupsOf4=Call5$StragglerGroupsOf4+Call5$GroupsOf7Fair
Call5$Cleared_Off_Players=Call5$Cleared_Off_Players+5*Call5$GroupsOf7Ruthless
Call5$StragglerGroupsOf2=Call5$StragglerGroupsOf2+Call5$GroupsOf7Ruthless


##Call6##
Call6$Cleared_Off_Players=6*Call6$GroupsOf6
Call6$StragglerGroupsOf1=Call6$GroupsOf1
Call6$StragglerGroupsOf2=Call6$GroupsOf2
Call6$StragglerGroupsOf3=Call6$GroupsOf3
Call6$StragglerGroupsOf4=Call6$GroupsOf4
Call6$StragglerGroupsOf5=Call6$GroupsOf5

#
Call6$PercentFair1<-round(runif(1000,5,15))/100
Call6$PercentFair2<-round(runif(1000,5,15))/100
#
Call6$GroupsOf7Fair1<-round(Call6$GroupsOf7*Call6$PercentFair1)
Call6$GroupsOf7Fair2<-round(Call6$GroupsOf7*Call6$PercentFair2)
Call6$GroupsOf7Ruthless<-Call6$GroupsOf7-Call6$GroupsOf7Fair1-Call6$GroupsOf7Fair2


Call6$StragglerGroupsOf3=Call6$StragglerGroupsOf3+Call6$GroupsOf7Fair1
Call6$StragglerGroupsOf4=Call6$StragglerGroupsOf4+Call6$GroupsOf7Fair1
Call6$StragglerGroupsOf2=Call6$StragglerGroupsOf2+Call6$GroupsOf7Fair2
Call6$StragglerGroupsOf5=Call6$StragglerGroupsOf5+Call6$GroupsOf7Fair2
Call6$Cleared_Off_Players=Call6$Cleared_Off_Players+6*Call6$GroupsOf7Ruthless
Call6$StragglerGroupsOf1=Call6$StragglerGroupsOf1+Call6$GroupsOf7Ruthless


##Call7##
Call7$Cleared_Off_Players=7*Call7$GroupsOf7
Call7$StragglerGroupsOf1=Call7$GroupsOf1
Call7$StragglerGroupsOf2=Call7$GroupsOf2
Call7$StragglerGroupsOf3=Call7$GroupsOf3
Call7$StragglerGroupsOf4=Call7$GroupsOf4
Call7$StragglerGroupsOf5=Call7$GroupsOf5
Call7$StragglerGroupsOf6=Call7$GroupsOf6


##Call8##
Call8$Cleared_Off_Players=0
Call8$StragglerGroupsOf1=Call8$GroupsOf1
Call8$StragglerGroupsOf2=Call8$GroupsOf2
Call8$StragglerGroupsOf3=Call8$GroupsOf3
Call8$StragglerGroupsOf4=Call8$GroupsOf4
Call8$StragglerGroupsOf5=Call8$GroupsOf5
Call8$StragglerGroupsOf6=Call8$GroupsOf6
Call8$StragglerGroupsOf7=Call8$GroupsOf7


##Call9##
Call9$Cleared_Off_Players=0
Call9$StragglerGroupsOf1=Call9$GroupsOf1
Call9$StragglerGroupsOf2=Call9$GroupsOf2
Call9$StragglerGroupsOf3=Call9$GroupsOf3
Call9$StragglerGroupsOf4=Call9$GroupsOf4
Call9$StragglerGroupsOf5=Call9$GroupsOf5
Call9$StragglerGroupsOf6=Call9$GroupsOf6
Call9$StragglerGroupsOf7=Call9$GroupsOf7


##Call10##
Call10$Cleared_Off_Players=0
Call10$StragglerGroupsOf1=Call10$GroupsOf1
Call10$StragglerGroupsOf2=Call10$GroupsOf2
Call10$StragglerGroupsOf3=Call10$GroupsOf3
Call10$StragglerGroupsOf4=Call10$GroupsOf4
Call10$StragglerGroupsOf5=Call10$GroupsOf5
Call10$StragglerGroupsOf6=Call10$GroupsOf6
Call10$StragglerGroupsOf7=Call10$GroupsOf7


##Finding Complimentary Group Likelihood - Solo##


##Call3##
#
Call3$ChaosFactor = round(runif(1000,70,90))/100
Call3$SynthesisDifficulty = round(runif(1000,40,60))/100
Call3$PoachFactorReg = round(runif(1000,60,80))/100
Call3$PoachFactorJerk = round(runif(1000,85,95))/100
Call3$Denominator=Call3$StragglerGroupsOf2+Call3$StragglerGroupsOf1
#
Call3$FindAs1=Call3$ChaosFactor*((Call3$StragglerGroupsOf2/Call3$Denominator)+
  (Call3$SynthesisDifficulty*(Call3$StragglerGroupsOf1/Call3$Denominator)))
Call3$FindAs2Reg=Call3$ChaosFactor*((Call3$StragglerGroupsOf1/Call3$Denominator)+
  (Call3$PoachFactorReg*(Call3$StragglerGroupsOf2/Call3$Denominator)))
Call3$FindAs2Jerk=Call3$ChaosFactor*((Call3$StragglerGroupsOf1/Call3$Denominator)+
  (Call3$PoachFactorJerk*(Call3$StragglerGroupsOf2/Call3$Denominator)))
Call3$FindAs3=1
Call3$FindAs4Reg=(Call3$PercentFair*Call3$FindAs2Reg)+(.75*(1-Call3$PercentFair)*1)+(.25*(1-Call3$PercentFair)*Call3$FindAs1)
Call3$FindAs4Jerk=1
Call3$FindAs5Reg=(0.6*1)+(.4*Call3$FindAs2Reg)
Call3$FindAs5Jerk=1
Call3$FindAs6=1
Call3$FindAs7Reg=(0.43*1)+(.57*Call3$FindAs4Reg)
Call3$FindAs7Jerk=1

##Call4##
#
Call4$ChaosFactor = round(runif(1000,65,85))/100
Call4$SynthesisDifficulty = round(runif(1000,35,55))/100
Call4$PoachFactorReg = round(runif(1000,65,85))/100
Call4$PoachFactorJerk = round(runif(1000,85,95))/100
Call4$Denominator=Call4$StragglerGroupsOf3+Call4$StragglerGroupsOf2+Call4$StragglerGroupsOf1
#
Call4$FindAs1=Call4$ChaosFactor*((Call4$StragglerGroupsOf3/Call4$Denominator)+
  (Call4$SynthesisDifficulty*((Call4$StragglerGroupsOf2+Call4$StragglerGroupsOf1)/Call4$Denominator)))
Call4$FindAs2Reg=Call4$ChaosFactor*((Call4$StragglerGroupsOf2/Call4$Denominator)+
  (Call4$PoachFactorReg*(Call4$StragglerGroupsOf3/Call4$Denominator))+
  (Call4$SynthesisDifficulty*((Call4$StragglerGroupsOf1)/Call4$Denominator)))
Call4$FindAs2Jerk=Call4$ChaosFactor*((Call4$StragglerGroupsOf2/Call4$Denominator)+
  (Call4$PoachFactorJerk*(Call4$StragglerGroupsOf3/Call4$Denominator))+
  (Call4$SynthesisDifficulty*((Call4$StragglerGroupsOf1)/Call4$Denominator)))
Call4$FindAs3Reg=Call4$ChaosFactor*((Call4$StragglerGroupsOf1/Call4$Denominator)+
  (Call4$PoachFactorReg*((Call4$StragglerGroupsOf3+Call4$StragglerGroupsOf2)/Call4$Denominator)))
Call4$FindAs3Jerk=Call4$ChaosFactor*((Call4$StragglerGroupsOf1/Call4$Denominator)+
  (Call4$PoachFactorJerk*((Call4$StragglerGroupsOf3+Call4$StragglerGroupsOf2)/Call4$Denominator)))
Call4$FindAs4=1
Call4$FindAs5Reg=(Call4$PercentFair*.6*Call4$FindAs3Reg)+(Call4$PercentFair*.4*Call4$FindAs2Reg)+
  (.8*(1-Call4$PercentFair)*1)+(.2*(1-Call4$PercentFair)*Call4$FindAs1)
Call4$FindAs5Jerk=1
Call4$FindAs6Reg=(Call4$PercentFair*Call4$FindAs3Reg)+
  (.67*(1-Call4$PercentFair)*1)+(.33*(1-Call4$PercentFair)*Call4$FindAs2Reg)
Call4$FindAs6Jerk=1
Call4$FindAs7Reg=(0.57*1)+(0.43*Call4$FindAs3Reg)
Call4$FindAs7Jerk=1

##Call5##
#
Call5$ChaosFactor = round(runif(1000,60,80))/100
Call5$SynthesisDifficulty = round(runif(1000,30,50))/100
Call5$PoachFactorReg = round(runif(1000,70,90))/100
Call5$PoachFactorJerk = round(runif(1000,85,95))/100
Call5$Denominator=Call5$StragglerGroupsOf4+Call5$StragglerGroupsOf3+Call5$StragglerGroupsOf2+Call5$StragglerGroupsOf1
#
Call5$FindAs1=Call5$ChaosFactor*((Call5$StragglerGroupsOf4/Call5$Denominator)+
  (Call5$SynthesisDifficulty*((Call5$StragglerGroupsOf3+Call5$StragglerGroupsOf2)/Call5$Denominator)))
Call5$FindAs2Reg=Call5$ChaosFactor*((Call5$StragglerGroupsOf3/Call5$Denominator)+
  (Call5$PoachFactorReg*(Call5$StragglerGroupsOf4/Call5$Denominator))+
  (Call5$SynthesisDifficulty*((Call5$StragglerGroupsOf2+Call5$StragglerGroupsOf1)/Call5$Denominator)))
Call5$FindAs2Jerk=Call5$ChaosFactor*((Call5$StragglerGroupsOf3/Call5$Denominator)+
  (Call5$PoachFactorJerk*(Call5$StragglerGroupsOf4/Call5$Denominator))+
  (Call5$SynthesisDifficulty*((Call5$StragglerGroupsOf2+Call5$StragglerGroupsOf1)/Call5$Denominator)))
Call5$FindAs3Reg=Call5$ChaosFactor*((Call5$StragglerGroupsOf2/Call5$Denominator)+
  (Call5$PoachFactorReg*((Call5$StragglerGroupsOf3+Call5$StragglerGroupsOf4)/Call5$Denominator))+
  (Call5$SynthesisDifficulty*((Call5$StragglerGroupsOf1)/Call5$Denominator)))
Call5$FindAs3Jerk=Call5$ChaosFactor*((Call5$StragglerGroupsOf2/Call5$Denominator)+
  (Call5$PoachFactorJerk*((Call5$StragglerGroupsOf3+Call5$StragglerGroupsOf4)/Call5$Denominator))+
  (Call5$SynthesisDifficulty*((Call5$StragglerGroupsOf1)/Call5$Denominator)))
Call5$FindAs4Reg=Call5$ChaosFactor*((Call5$StragglerGroupsOf1/Call5$Denominator)+
  (Call5$PoachFactorReg*((Call5$StragglerGroupsOf2+Call5$StragglerGroupsOf3+Call5$StragglerGroupsOf4)/Call5$Denominator)))
Call5$FindAs4Jerk=Call5$ChaosFactor*((Call5$StragglerGroupsOf1/Call5$Denominator)+
  (Call5$PoachFactorJerk*((Call5$StragglerGroupsOf2+Call5$StragglerGroupsOf3+Call5$StragglerGroupsOf4)/Call5$Denominator)))
Call5$FindAs5=1
Call5$FindAs6Reg=(Call5$PercentFair1*Call5$FindAs3Reg)+
  (Call5$PercentFair2*0.67*Call5$FindAs4Reg)+(Call5$PercentFair2*.33*Call5$FindAs2Reg)+
  ((1-(Call5$PercentFair1+Call5$PercentFair2))*.83*1)+((1-(Call5$PercentFair1+Call5$PercentFair2))*.17*Call5$FindAs1)
Call5$FindAs6Jerk=1
Call5$FindAs7Reg=((Call5$PercentFair1+Call5$PercentFair2)*.57*Call5$FindAs4Reg)+((Call5$PercentFair1+Call5$PercentFair2)*.43*Call5$FindAs3Reg)+
  ((1-(Call5$PercentFair1+Call5$PercentFair2))*.71*1)+((1-(Call5$PercentFair1+Call5$PercentFair2))*.29*Call5$FindAs2Reg)
Call5$FindAs7Jerk=1

##Call6##
#
Call6$ChaosFactor = round(runif(1000,55,75))/100
Call6$SynthesisDifficulty = round(runif(1000,25,45))/100
Call6$PoachFactorReg = round(runif(1000,75,90))/100
Call6$PoachFactorJerk = round(runif(1000,85,95))/100
Call6$Denominator=Call6$StragglerGroupsOf5+Call6$StragglerGroupsOf4+Call6$StragglerGroupsOf3+Call6$StragglerGroupsOf2+Call6$StragglerGroupsOf1
#
Call6$FindAs1=Call6$ChaosFactor*((Call6$StragglerGroupsOf5/Call6$Denominator)+
  (Call6$SynthesisDifficulty*((Call6$StragglerGroupsOf4+Call6$StragglerGroupsOf3)/Call6$Denominator)))
Call6$FindAs2Reg=Call6$ChaosFactor*((Call6$StragglerGroupsOf4/Call6$Denominator)+
  (Call6$PoachFactorReg*(Call6$StragglerGroupsOf5/Call6$Denominator))+
  (Call6$SynthesisDifficulty*((Call6$StragglerGroupsOf3+Call6$StragglerGroupsOf2)/Call6$Denominator)))
Call6$FindAs2Jerk=Call6$ChaosFactor*((Call6$StragglerGroupsOf4/Call6$Denominator)+
  (Call6$PoachFactorJerk*(Call6$StragglerGroupsOf5/Call6$Denominator))+
  (Call6$SynthesisDifficulty*((Call6$StragglerGroupsOf3+Call6$StragglerGroupsOf2)/Call6$Denominator)))
Call6$FindAs3Reg=Call6$ChaosFactor*((Call6$StragglerGroupsOf3/Call6$Denominator)+
  (Call6$PoachFactorReg*((Call6$StragglerGroupsOf4+Call6$StragglerGroupsOf5)/Call6$Denominator))+
  (Call6$SynthesisDifficulty*((Call6$StragglerGroupsOf2+Call6$StragglerGroupsOf1)/Call6$Denominator)))
Call6$FindAs3Jerk=Call6$ChaosFactor*((Call6$StragglerGroupsOf3/Call6$Denominator)+
  (Call6$PoachFactorJerk*((Call6$StragglerGroupsOf4+Call6$StragglerGroupsOf5)/Call6$Denominator))+
  (Call6$SynthesisDifficulty*((Call6$StragglerGroupsOf2+Call6$StragglerGroupsOf1)/Call6$Denominator)))
Call6$FindAs4Reg=Call6$ChaosFactor*((Call6$StragglerGroupsOf2/Call6$Denominator)+
  (Call6$PoachFactorReg*((Call6$StragglerGroupsOf3+Call6$StragglerGroupsOf4+Call6$StragglerGroupsOf5)/Call6$Denominator))+
  (Call6$SynthesisDifficulty*((Call6$StragglerGroupsOf1)/Call6$Denominator)))
Call6$FindAs4Jerk=Call6$ChaosFactor*((Call6$StragglerGroupsOf2/Call6$Denominator)+
  (Call6$PoachFactorJerk*((Call6$StragglerGroupsOf3+Call6$StragglerGroupsOf4+Call6$StragglerGroupsOf5)/Call6$Denominator))+
  (Call6$SynthesisDifficulty*((Call6$StragglerGroupsOf1)/Call6$Denominator)))
Call6$FindAs5Reg=Call6$ChaosFactor*((Call6$StragglerGroupsOf1/Call6$Denominator)+
  (Call6$PoachFactorReg*((Call6$StragglerGroupsOf2+Call6$StragglerGroupsOf3+Call6$StragglerGroupsOf4+Call6$StragglerGroupsOf5)/Call6$Denominator)))
Call6$FindAs5Jerk=Call6$ChaosFactor*((Call6$StragglerGroupsOf2/Call6$Denominator)+
  (Call6$PoachFactorJerk*((Call6$StragglerGroupsOf2+Call6$StragglerGroupsOf3+Call6$StragglerGroupsOf4+Call6$StragglerGroupsOf5)/Call6$Denominator)))
Call6$FindAs6=1
Call6$FindAs7Reg=(Call6$PercentFair1*0.43*Call6$FindAs3Reg)+(Call6$PercentFair1*0.57*Call6$FindAs4Reg)+
  (Call6$PercentFair2*0.71*Call6$FindAs5Reg)+(Call6$PercentFair2*.29*Call6$FindAs2Reg)+
  ((1-(Call6$PercentFair1+Call6$PercentFair2))*.86*1)+((1-(Call6$PercentFair1+Call6$PercentFair2))*.14*Call6$FindAs1)
Call6$FindAs7Jerk=1

##Call7##
#
Call7$ChaosFactor = round(runif(1000,50,70))/100
Call7$SynthesisDifficulty = round(runif(1000,20,40))/100
Call7$PoachFactorReg = round(runif(1000,75,90))/100
Call7$PoachFactorJerk = round(runif(1000,85,95))/100
Call7$Denominator=Call7$StragglerGroupsOf6+Call7$StragglerGroupsOf5+Call7$StragglerGroupsOf4+Call7$StragglerGroupsOf3+Call7$StragglerGroupsOf2+Call7$StragglerGroupsOf1
#
Call7$FindAs1=Call7$ChaosFactor*((Call7$StragglerGroupsOf6/Call7$Denominator)+
  (Call7$SynthesisDifficulty*((Call7$StragglerGroupsOf5+Call7$StragglerGroupsOf4)/Call7$Denominator)))
Call7$FindAs2Reg=Call7$ChaosFactor*((Call7$StragglerGroupsOf5/Call7$Denominator)+
  (Call7$PoachFactorReg*(Call7$StragglerGroupsOf6/Call7$Denominator))+
  (Call7$SynthesisDifficulty*((Call7$StragglerGroupsOf4+Call7$StragglerGroupsOf3)/Call7$Denominator)))
Call7$FindAs2Jerk=Call7$ChaosFactor*((Call7$StragglerGroupsOf5/Call7$Denominator)+
  (Call7$PoachFactorJerk*(Call7$StragglerGroupsOf6/Call7$Denominator))+
  (Call7$SynthesisDifficulty*((Call7$StragglerGroupsOf4+Call7$StragglerGroupsOf3)/Call7$Denominator)))
Call7$FindAs3Reg=Call7$ChaosFactor*((Call7$StragglerGroupsOf4/Call7$Denominator)+
  (Call7$PoachFactorReg*((Call7$StragglerGroupsOf5+Call7$StragglerGroupsOf6)/Call7$Denominator))+
  (Call7$SynthesisDifficulty*((Call7$StragglerGroupsOf3+Call7$StragglerGroupsOf2)/Call7$Denominator)))
Call7$FindAs3Jerk=Call7$ChaosFactor*((Call7$StragglerGroupsOf4/Call7$Denominator)+
  (Call7$PoachFactorJerk*((Call7$StragglerGroupsOf5+Call7$StragglerGroupsOf6)/Call7$Denominator))+
  (Call7$SynthesisDifficulty*((Call7$StragglerGroupsOf3+Call7$StragglerGroupsOf2)/Call7$Denominator)))
Call7$FindAs4Reg=Call7$ChaosFactor*((Call7$StragglerGroupsOf3/Call7$Denominator)+
  (Call7$PoachFactorReg*((Call7$StragglerGroupsOf4+Call7$StragglerGroupsOf5+Call7$StragglerGroupsOf6)/Call7$Denominator))+
  (Call7$SynthesisDifficulty*((Call7$StragglerGroupsOf2+Call7$StragglerGroupsOf1)/Call7$Denominator)))
Call7$FindAs4Jerk=Call7$ChaosFactor*((Call7$StragglerGroupsOf3/Call7$Denominator)+
  (Call7$PoachFactorJerk*((Call7$StragglerGroupsOf4+Call7$StragglerGroupsOf5+Call7$StragglerGroupsOf6)/Call7$Denominator))+
  (Call7$SynthesisDifficulty*((Call7$StragglerGroupsOf2+Call7$StragglerGroupsOf1)/Call7$Denominator)))
Call7$FindAs5Reg=Call7$ChaosFactor*((Call7$StragglerGroupsOf2/Call7$Denominator)+
  (Call7$PoachFactorReg*((Call7$StragglerGroupsOf3+Call7$StragglerGroupsOf4+Call7$StragglerGroupsOf5+Call7$StragglerGroupsOf6)/Call7$Denominator))+
  (Call7$SynthesisDifficulty*((Call7$StragglerGroupsOf1)/Call7$Denominator)))
Call7$FindAs5Jerk=Call7$ChaosFactor*((Call7$StragglerGroupsOf2/Call7$Denominator)+
  (Call7$PoachFactorJerk*((Call7$StragglerGroupsOf3+Call7$StragglerGroupsOf4+Call7$StragglerGroupsOf5+Call7$StragglerGroupsOf6)/Call7$Denominator))+
  (Call7$SynthesisDifficulty*((Call7$StragglerGroupsOf1)/Call7$Denominator)))
Call7$FindAs6Reg=Call7$ChaosFactor*((Call7$StragglerGroupsOf1/Call7$Denominator)+
  (Call7$PoachFactorReg*((Call7$StragglerGroupsOf2+Call7$StragglerGroupsOf3+Call7$StragglerGroupsOf4+Call7$StragglerGroupsOf5+Call7$StragglerGroupsOf6)/Call7$Denominator)))
Call7$FindAs6Jerk=Call7$ChaosFactor*((Call7$StragglerGroupsOf1/Call7$Denominator)+
  (Call7$PoachFactorJerk*((Call7$StragglerGroupsOf2+Call7$StragglerGroupsOf3+Call7$StragglerGroupsOf4+Call7$StragglerGroupsOf5+Call7$StragglerGroupsOf6)/Call7$Denominator)))
Call7$FindAs7=1

##Call8##
#
Call8$ChaosFactor = round(runif(1000,50,70))/100
Call8$SynthesisDifficulty = round(runif(1000,20,40))/100
Call8$PoachFactorReg = round(runif(1000,75,90))/100
Call8$PoachFactorJerk = round(runif(1000,85,95))/100
Call8$Denominator=Call8$StragglerGroupsOf7+Call8$StragglerGroupsOf6+Call8$StragglerGroupsOf5+Call8$StragglerGroupsOf4+Call8$StragglerGroupsOf3+Call8$StragglerGroupsOf2+Call8$StragglerGroupsOf1
#
Call8$FindAs1=Call8$ChaosFactor*((Call8$StragglerGroupsOf7/Call8$Denominator)+
  (Call8$SynthesisDifficulty*((Call8$StragglerGroupsOf6+Call8$StragglerGroupsOf5)/Call8$Denominator)))
Call8$FindAs2Reg=Call8$ChaosFactor*((Call8$StragglerGroupsOf6/Call8$Denominator)+
  (Call8$PoachFactorReg*(Call8$StragglerGroupsOf7/Call8$Denominator))+
  (Call8$SynthesisDifficulty*((Call8$StragglerGroupsOf5+Call8$StragglerGroupsOf4)/Call8$Denominator)))
Call8$FindAs2Jerk=Call8$ChaosFactor*((Call8$StragglerGroupsOf6/Call8$Denominator)+
  (Call8$PoachFactorJerk*(Call8$StragglerGroupsOf7/Call8$Denominator))+
  (Call8$SynthesisDifficulty*((Call8$StragglerGroupsOf5+Call8$StragglerGroupsOf4)/Call8$Denominator)))
Call8$FindAs3Reg=Call8$ChaosFactor*((Call8$StragglerGroupsOf5/Call8$Denominator)+
  (Call8$PoachFactorReg*((Call8$StragglerGroupsOf6+Call8$StragglerGroupsOf7)/Call8$Denominator))+
  (Call8$SynthesisDifficulty*((Call8$StragglerGroupsOf4+Call8$StragglerGroupsOf3)/Call8$Denominator)))
Call8$FindAs3Jerk=Call8$ChaosFactor*((Call8$StragglerGroupsOf5/Call8$Denominator)+
  (Call8$PoachFactorJerk*((Call8$StragglerGroupsOf6+Call8$StragglerGroupsOf7)/Call8$Denominator))+
  (Call8$SynthesisDifficulty*((Call8$StragglerGroupsOf4+Call8$StragglerGroupsOf3)/Call8$Denominator)))
Call8$FindAs4Reg=Call8$ChaosFactor*((Call8$StragglerGroupsOf4/Call8$Denominator)+
  (Call8$PoachFactorReg*((Call8$StragglerGroupsOf5+Call8$StragglerGroupsOf6+Call8$StragglerGroupsOf7)/Call8$Denominator))+
  (Call8$SynthesisDifficulty*((Call8$StragglerGroupsOf3+Call8$StragglerGroupsOf2)/Call8$Denominator)))
Call8$FindAs4Jerk=Call8$ChaosFactor*((Call8$StragglerGroupsOf4/Call8$Denominator)+
  (Call8$PoachFactorJerk*((Call8$StragglerGroupsOf5+Call8$StragglerGroupsOf6+Call8$StragglerGroupsOf7)/Call8$Denominator))+
  (Call8$SynthesisDifficulty*((Call8$StragglerGroupsOf3+Call8$StragglerGroupsOf2)/Call8$Denominator)))
Call8$FindAs5Reg=Call8$ChaosFactor*((Call8$StragglerGroupsOf3/Call8$Denominator)+
  (Call8$PoachFactorReg*((Call8$StragglerGroupsOf4+Call8$StragglerGroupsOf5+Call8$StragglerGroupsOf6+Call8$StragglerGroupsOf7)/Call8$Denominator))+
  (Call8$SynthesisDifficulty*((Call8$StragglerGroupsOf2+Call8$StragglerGroupsOf1)/Call8$Denominator)))
Call8$FindAs5Jerk=Call8$ChaosFactor*((Call8$StragglerGroupsOf3/Call8$Denominator)+
  (Call8$PoachFactorJerk*((Call8$StragglerGroupsOf4+Call8$StragglerGroupsOf5+Call8$StragglerGroupsOf6+Call8$StragglerGroupsOf7)/Call8$Denominator))+
  (Call8$SynthesisDifficulty*((Call8$StragglerGroupsOf2+Call8$StragglerGroupsOf1)/Call8$Denominator)))
Call8$FindAs6Reg=Call8$ChaosFactor*((Call8$StragglerGroupsOf2/Call8$Denominator)+
  (Call8$PoachFactorReg*((Call8$StragglerGroupsOf3+Call8$StragglerGroupsOf4+Call8$StragglerGroupsOf5+Call8$StragglerGroupsOf6+Call8$StragglerGroupsOf7)/Call8$Denominator))+
  (Call8$SynthesisDifficulty*((Call8$StragglerGroupsOf1)/Call8$Denominator)))
Call8$FindAs6Jerk=Call8$ChaosFactor*((Call8$StragglerGroupsOf2/Call8$Denominator)+
  (Call8$PoachFactorJerk*((Call8$StragglerGroupsOf3+Call8$StragglerGroupsOf4+Call8$StragglerGroupsOf5+Call8$StragglerGroupsOf6+Call8$StragglerGroupsOf7)/Call8$Denominator))+
  (Call8$SynthesisDifficulty*((Call8$StragglerGroupsOf1)/Call8$Denominator)))
Call8$FindAs7Reg=Call8$ChaosFactor*((Call8$StragglerGroupsOf1/Call8$Denominator)+
  (Call8$PoachFactorReg*((Call8$StragglerGroupsOf2+Call8$StragglerGroupsOf3+Call8$StragglerGroupsOf4+Call8$StragglerGroupsOf5+Call8$StragglerGroupsOf6+Call8$StragglerGroupsOf7)/Call8$Denominator)))
Call8$FindAs7Jerk=Call8$ChaosFactor*((Call8$StragglerGroupsOf1/Call8$Denominator)+
  (Call8$PoachFactorJerk*((Call8$StragglerGroupsOf2+Call8$StragglerGroupsOf3+Call8$StragglerGroupsOf4+Call8$StragglerGroupsOf5+Call8$StragglerGroupsOf6+Call8$StragglerGroupsOf7)/Call8$Denominator)))

##Call9##
#
Call9$ChaosFactor = round(runif(1000,50,70))/100
Call9$SynthesisDifficulty = round(runif(1000,20,40))/100
Call9$PoachFactorReg = round(runif(1000,75,90))/100
Call9$PoachFactorJerk = round(runif(1000,85,95))/100
Call9$Denominator=Call9$StragglerGroupsOf7+Call9$StragglerGroupsOf6+Call9$StragglerGroupsOf5+Call9$StragglerGroupsOf4+Call9$StragglerGroupsOf3+Call9$StragglerGroupsOf2+Call9$StragglerGroupsOf1
#
Call9$FindAs1=
  Call9$ChaosFactor*(Call9$SynthesisDifficulty*((Call9$StragglerGroupsOf7+Call9$StragglerGroupsOf6)/Call9$Denominator))
Call9$FindAs2=Call9$ChaosFactor*((Call9$StragglerGroupsOf7/Call9$Denominator)+
  (Call9$SynthesisDifficulty*((Call9$StragglerGroupsOf6+Call9$StragglerGroupsOf5)/Call9$Denominator)))
Call9$FindAs3Reg=Call9$ChaosFactor*((Call9$StragglerGroupsOf6/Call9$Denominator)+
  (Call9$PoachFactorReg*((Call9$StragglerGroupsOf7)/Call9$Denominator))+
  (Call9$SynthesisDifficulty*((Call9$StragglerGroupsOf5+Call9$StragglerGroupsOf4)/Call9$Denominator)))
Call9$FindAs3Jerk=Call9$ChaosFactor*((Call9$StragglerGroupsOf6/Call9$Denominator)+
  (Call9$PoachFactorJerk*((Call9$StragglerGroupsOf7)/Call9$Denominator))+
  (Call9$SynthesisDifficulty*((Call9$StragglerGroupsOf5+Call9$StragglerGroupsOf4)/Call9$Denominator)))
Call9$FindAs4Reg=Call9$ChaosFactor*((Call9$StragglerGroupsOf5/Call9$Denominator)+
  (Call9$PoachFactorReg*((Call9$StragglerGroupsOf6+Call9$StragglerGroupsOf7)/Call9$Denominator))+
  (Call9$SynthesisDifficulty*((Call9$StragglerGroupsOf4+Call9$StragglerGroupsOf3)/Call9$Denominator)))
Call9$FindAs4Jerk=Call9$ChaosFactor*((Call9$StragglerGroupsOf5/Call9$Denominator)+
  (Call9$PoachFactorJerk*((Call9$StragglerGroupsOf6+Call9$StragglerGroupsOf7)/Call9$Denominator))+
  (Call9$SynthesisDifficulty*((Call9$StragglerGroupsOf4+Call9$StragglerGroupsOf3)/Call9$Denominator)))
Call9$FindAs5Reg=Call9$ChaosFactor*((Call9$StragglerGroupsOf4/Call9$Denominator)+
  (Call9$PoachFactorReg*((Call9$StragglerGroupsOf5+Call9$StragglerGroupsOf6+Call9$StragglerGroupsOf7)/Call9$Denominator))+
  (Call9$SynthesisDifficulty*((Call9$StragglerGroupsOf3+Call9$StragglerGroupsOf2)/Call9$Denominator)))
Call9$FindAs5Jerk=Call9$ChaosFactor*((Call9$StragglerGroupsOf4/Call9$Denominator)+
  (Call9$PoachFactorJerk*((Call9$StragglerGroupsOf5+Call9$StragglerGroupsOf6+Call9$StragglerGroupsOf7)/Call9$Denominator))+
  (Call9$SynthesisDifficulty*((Call9$StragglerGroupsOf3+Call9$StragglerGroupsOf2)/Call9$Denominator)))
Call9$FindAs6Reg=Call9$ChaosFactor*((Call9$StragglerGroupsOf3/Call9$Denominator)+
  (Call9$PoachFactorReg*((Call9$StragglerGroupsOf4+Call9$StragglerGroupsOf5+Call9$StragglerGroupsOf6+Call9$StragglerGroupsOf7)/Call9$Denominator))+
  (Call9$SynthesisDifficulty*((Call9$StragglerGroupsOf2+Call9$StragglerGroupsOf1)/Call9$Denominator)))
Call9$FindAs6Jerk=Call9$ChaosFactor*((Call9$StragglerGroupsOf3/Call9$Denominator)+
  (Call9$PoachFactorJerk*((Call9$StragglerGroupsOf4+Call9$StragglerGroupsOf5+Call9$StragglerGroupsOf6+Call9$StragglerGroupsOf7)/Call9$Denominator))+
  (Call9$SynthesisDifficulty*((Call9$StragglerGroupsOf2+Call9$StragglerGroupsOf1)/Call9$Denominator)))
Call9$FindAs7Reg=Call9$ChaosFactor*((Call9$StragglerGroupsOf2/Call9$Denominator)+
  (Call9$PoachFactorReg*((Call9$StragglerGroupsOf3+Call9$StragglerGroupsOf4+Call9$StragglerGroupsOf5+Call9$StragglerGroupsOf6+Call9$StragglerGroupsOf7)/Call9$Denominator))+
  (Call9$SynthesisDifficulty*((Call9$StragglerGroupsOf1)/Call9$Denominator)))
Call9$FindAs7Jerk=Call9$ChaosFactor*((Call9$StragglerGroupsOf2/Call9$Denominator)+
  (Call9$PoachFactorJerk*((Call9$StragglerGroupsOf3+Call9$StragglerGroupsOf4+Call9$StragglerGroupsOf5+Call9$StragglerGroupsOf6+Call9$StragglerGroupsOf7)/Call9$Denominator))+
  (Call9$SynthesisDifficulty*((Call9$StragglerGroupsOf1)/Call9$Denominator)))

##Call10##
#
Call10$ChaosFactor = round(runif(1000,50,70))/100
Call10$SynthesisDifficulty = round(runif(1000,20,40))/100
Call10$PoachFactorReg = round(runif(1000,75,90))/100
Call10$PoachFactorJerk = round(runif(1000,85,95))/100
Call10$Denominator=Call10$StragglerGroupsOf7+Call10$StragglerGroupsOf6+Call10$StragglerGroupsOf5+Call10$StragglerGroupsOf4+Call10$StragglerGroupsOf3+Call10$StragglerGroupsOf2+Call10$StragglerGroupsOf1
#
Call10$FindAs1=
  Call10$ChaosFactor*(Call10$SynthesisDifficulty*((Call10$StragglerGroupsOf7)/Call10$Denominator))
Call10$FindAs2=
  Call10$ChaosFactor*(Call10$SynthesisDifficulty*((Call10$StragglerGroupsOf7+Call10$StragglerGroupsOf6)/Call10$Denominator))
Call10$FindAs3=Call10$ChaosFactor*((Call10$StragglerGroupsOf7/Call10$Denominator)+
  (Call10$SynthesisDifficulty*((Call10$StragglerGroupsOf6+Call10$StragglerGroupsOf5)/Call10$Denominator)))
Call10$FindAs4Reg=Call10$ChaosFactor*((Call10$StragglerGroupsOf6/Call10$Denominator)+
  (Call10$PoachFactorReg*((Call10$StragglerGroupsOf7)/Call10$Denominator))+
  (Call10$SynthesisDifficulty*((Call10$StragglerGroupsOf5+Call10$StragglerGroupsOf4)/Call10$Denominator)))
Call10$FindAs4Jerk=Call10$ChaosFactor*((Call10$StragglerGroupsOf6/Call10$Denominator)+
  (Call10$PoachFactorJerk*((Call10$StragglerGroupsOf7)/Call10$Denominator))+
  (Call10$SynthesisDifficulty*((Call10$StragglerGroupsOf5+Call10$StragglerGroupsOf4)/Call10$Denominator)))
Call10$FindAs5Reg=Call10$ChaosFactor*((Call10$StragglerGroupsOf5/Call10$Denominator)+
  (Call10$PoachFactorReg*((Call10$StragglerGroupsOf6+Call10$StragglerGroupsOf7)/Call10$Denominator))+
  (Call10$SynthesisDifficulty*((Call10$StragglerGroupsOf4+Call10$StragglerGroupsOf3)/Call10$Denominator)))
Call10$FindAs5Jerk=Call10$ChaosFactor*((Call10$StragglerGroupsOf5/Call10$Denominator)+
  (Call10$PoachFactorJerk*((Call10$StragglerGroupsOf6+Call10$StragglerGroupsOf7)/Call10$Denominator))+
  (Call10$SynthesisDifficulty*((Call10$StragglerGroupsOf4+Call10$StragglerGroupsOf3)/Call10$Denominator)))
Call10$FindAs6Reg=Call10$ChaosFactor*((Call10$StragglerGroupsOf4/Call10$Denominator)+
  (Call10$PoachFactorReg*((Call10$StragglerGroupsOf5+Call10$StragglerGroupsOf6+Call10$StragglerGroupsOf7)/Call10$Denominator))+
  (Call10$SynthesisDifficulty*((Call10$StragglerGroupsOf3+Call10$StragglerGroupsOf2)/Call10$Denominator)))
Call10$FindAs6Jerk=Call10$ChaosFactor*((Call10$StragglerGroupsOf4/Call10$Denominator)+
  (Call10$PoachFactorJerk*((Call10$StragglerGroupsOf5+Call10$StragglerGroupsOf6+Call10$StragglerGroupsOf7)/Call10$Denominator))+
  (Call10$SynthesisDifficulty*((Call10$StragglerGroupsOf3+Call10$StragglerGroupsOf2)/Call10$Denominator)))
Call10$FindAs7Reg=Call10$ChaosFactor*((Call10$StragglerGroupsOf3/Call10$Denominator)+
  (Call10$PoachFactorReg*((Call10$StragglerGroupsOf4+Call10$StragglerGroupsOf5+Call10$StragglerGroupsOf6+Call10$StragglerGroupsOf7)/Call10$Denominator))+
  (Call10$SynthesisDifficulty*((Call10$StragglerGroupsOf2+Call10$StragglerGroupsOf1)/Call10$Denominator)))
Call10$FindAs7Jerk=Call10$ChaosFactor*((Call10$StragglerGroupsOf3/Call10$Denominator)+
  (Call10$PoachFactorJerk*((Call10$StragglerGroupsOf4+Call10$StragglerGroupsOf5+Call10$StragglerGroupsOf6+Call10$StragglerGroupsOf7)/Call10$Denominator))+
  (Call10$SynthesisDifficulty*((Call10$StragglerGroupsOf2+Call10$StragglerGroupsOf1)/Call10$Denominator)))


##Group Analysis Solo##
Group_Analysis<-data.frame((1:7))
colnames(Group_Analysis)<-'Group Size'
Group_Analysis$SurviveCall3Reg=c(mean(Call3$FindAs1),mean(Call3$FindAs2Reg),mean(Call3$FindAs3),mean(Call3$FindAs4Reg),mean(Call3$FindAs5Reg),
                                 mean(Call3$FindAs6),mean(Call3$FindAs7Reg))
Group_Analysis$SurviveCall3Jerk=c(mean(Call3$FindAs1),mean(Call3$FindAs2Jerk),mean(Call3$FindAs3),mean(Call3$FindAs4Jerk),mean(Call3$FindAs5Jerk),
                                 mean(Call3$FindAs6),mean(Call3$FindAs7Jerk))
Group_Analysis$SurviveCall4Reg=c(mean(Call4$FindAs1),mean(Call4$FindAs2Reg),mean(Call4$FindAs3Reg),mean(Call4$FindAs4),mean(Call4$FindAs5Reg),
                                 mean(Call4$FindAs6Reg),mean(Call4$FindAs7Reg))
Group_Analysis$SurviveCall4Jerk=c(mean(Call4$FindAs1),mean(Call4$FindAs2Jerk),mean(Call4$FindAs3Jerk),mean(Call4$FindAs4),mean(Call4$FindAs5Jerk),
                                     mean(Call4$FindAs6Jerk),mean(Call4$FindAs7Jerk))
Group_Analysis$SurviveCall5Reg=c(mean(Call5$FindAs1),mean(Call5$FindAs2Reg),mean(Call5$FindAs3Reg),mean(Call5$FindAs4Reg),mean(Call5$FindAs5),
                                 mean(Call5$FindAs6Reg),mean(Call5$FindAs7Reg))
Group_Analysis$SurviveCall5Jerk=c(mean(Call5$FindAs1),mean(Call5$FindAs2Jerk),mean(Call5$FindAs3Jerk),mean(Call5$FindAs4Jerk),mean(Call5$FindAs5),
                                     mean(Call5$FindAs6Jerk),mean(Call5$FindAs7Jerk))
Group_Analysis$SurviveCall6Reg=c(mean(Call6$FindAs1),mean(Call6$FindAs2Reg),mean(Call6$FindAs3Reg),mean(Call6$FindAs4Reg),mean(Call6$FindAs5Reg),
                                 mean(Call6$FindAs6),mean(Call6$FindAs7Reg))
Group_Analysis$SurviveCall6Jerk=c(mean(Call6$FindAs1),mean(Call6$FindAs2Jerk),mean(Call6$FindAs3Jerk),mean(Call6$FindAs4Jerk),mean(Call6$FindAs5Jerk),
                                     mean(Call6$FindAs6),mean(Call6$FindAs7Jerk))
Group_Analysis$SurviveCall7Reg=c(mean(Call7$FindAs1),mean(Call7$FindAs2Reg),mean(Call7$FindAs3Reg),mean(Call7$FindAs4Reg),mean(Call7$FindAs5Reg),
                                 mean(Call7$FindAs6Reg),mean(Call7$FindAs7))
Group_Analysis$SurviveCall7Jerk=c(mean(Call7$FindAs1),mean(Call7$FindAs2Jerk),mean(Call7$FindAs3Jerk),mean(Call7$FindAs4Jerk),mean(Call7$FindAs5Jerk),
                                     mean(Call7$FindAs6Jerk),mean(Call7$FindAs7))
Group_Analysis$SurviveCall8Reg=c(mean(Call8$FindAs1),mean(Call8$FindAs2Reg),mean(Call8$FindAs3Reg),mean(Call8$FindAs4Reg),mean(Call8$FindAs5Reg),
                                 mean(Call8$FindAs6Reg),mean(Call8$FindAs7Reg))
Group_Analysis$SurviveCall8Jerk=c(mean(Call8$FindAs1),mean(Call8$FindAs2Jerk),mean(Call8$FindAs3Jerk),mean(Call8$FindAs4Jerk),mean(Call8$FindAs5Jerk),
                                     mean(Call8$FindAs6Jerk),mean(Call8$FindAs7Jerk))
Group_Analysis$SurviveCall9Reg=c(mean(Call9$FindAs1),mean(Call9$FindAs2),mean(Call9$FindAs3Reg),mean(Call9$FindAs4Reg),mean(Call9$FindAs5Reg),
                                 mean(Call9$FindAs6Reg),mean(Call9$FindAs7Reg))
Group_Analysis$SurviveCall9Jerk=c(mean(Call9$FindAs1),mean(Call9$FindAs2),mean(Call9$FindAs3Jerk),mean(Call9$FindAs4Jerk),mean(Call9$FindAs5Jerk),
                                     mean(Call9$FindAs6Jerk),mean(Call9$FindAs7Jerk))
Group_Analysis$SurviveCall10Reg=c(mean(Call10$FindAs1),mean(Call10$FindAs2),mean(Call10$FindAs3),mean(Call10$FindAs4Reg),mean(Call10$FindAs5Reg),
                                 mean(Call10$FindAs6Reg),mean(Call10$FindAs7Reg))
Group_Analysis$SurviveCall10Jerk=c(mean(Call10$FindAs1),mean(Call10$FindAs2),mean(Call10$FindAs3),mean(Call10$FindAs4Jerk),mean(Call10$FindAs5Jerk),
                                     mean(Call10$FindAs6Jerk),mean(Call10$FindAs7Jerk))

Group_Analysis$AverageSurvivalRateReg=(Group_Analysis$SurviveCall3Reg+Group_Analysis$SurviveCall4Reg+Group_Analysis$SurviveCall5Reg+Group_Analysis$SurviveCall6Reg+
                                      Group_Analysis$SurviveCall7Reg+Group_Analysis$SurviveCall8Reg+Group_Analysis$SurviveCall9Reg+Group_Analysis$SurviveCall10Reg)/8
Group_Analysis$AverageSurvivalRateJerk=(Group_Analysis$SurviveCall3Jerk+Group_Analysis$SurviveCall4Jerk+Group_Analysis$SurviveCall5Jerk+Group_Analysis$SurviveCall6Jerk+
                                         Group_Analysis$SurviveCall7Jerk+Group_Analysis$SurviveCall8Jerk+Group_Analysis$SurviveCall9Jerk+Group_Analysis$SurviveCall10Jerk)/8


##Group Survival Likelihood##


##Call3##

Call3$GroupSurvivalRate1=Call3$FindAs1
Call3$GroupSurvivalRate2=Call3$FindAs2Jerk
Call3$GroupSurvivalRate3=1
Call3$GroupSurvivalRate4Fair=(2*(2*Call3$FindAs2Jerk))/4
Call3$GroupSurvivalRate4Ruthless=((3*1)+(1*Call3$FindAs1))/4
Call3$GroupSurvivalRate5=((3*1)+(1*Call3$FindAs2Jerk))/5
Call3$GroupSurvivalRate6=1
Call3$GroupSurvivalRate7Fair=((3*1)+(2*(2*Call3$FindAs2Jerk)))/7
Call3$GroupSurvivalRate7Ruthless=((6*1)+(1*Call3$FindAs1))/7
Call3$GroupSurvivalRate4=pmax(Call3$GroupSurvivalRate4Fair,Call3$GroupSurvivalRate4Ruthless)
Call3$GroupSurvivalRate7=pmax(Call3$GroupSurvivalRate7Fair,Call3$GroupSurvivalRate7Ruthless)

##Call4##

Call4$GroupSurvivalRate1=Call4$FindAs1
Call4$GroupSurvivalRate2=Call4$FindAs2Jerk
Call4$GroupSurvivalRate3=Call4$FindAs3Jerk
Call4$GroupSurvivalRate4=1
Call4$GroupSurvivalRate5Fair=((3*Call4$FindAs3Jerk)+(2*Call4$FindAs2Jerk))/5
Call4$GroupSurvivalRate5Ruthless=((4*1)+(1*Call4$FindAs1))/5
Call4$GroupSurvivalRate6Fair=(2*(3*Call4$FindAs3Jerk))/6
Call4$GroupSurvivalRate6Ruthless=((4*1)+(2*Call4$FindAs2Jerk))/6
Call4$GroupSurvivalRate7=((4*1)+(3*Call4$FindAs3Jerk))/7
Call4$GroupSurvivalRate5=pmax(Call4$GroupSurvivalRate5Fair,Call4$GroupSurvivalRate5Ruthless)
Call4$GroupSurvivalRate6=pmax(Call4$GroupSurvivalRate6Fair,Call4$GroupSurvivalRate6Ruthless)

##Call5##

Call5$GroupSurvivalRate1=Call5$FindAs1
Call5$GroupSurvivalRate2=Call5$FindAs2Jerk
Call5$GroupSurvivalRate3=Call5$FindAs3Jerk
Call5$GroupSurvivalRate4=Call5$FindAs4Jerk
Call5$GroupSurvivalRate5=1
Call5$GroupSurvivalRate6Fair1=(2*(3*Call5$FindAs3Jerk))/6
Call5$GroupSurvivalRate6Fair2=((4*Call5$FindAs4Jerk)+(2*Call5$FindAs2Jerk))/6
Call5$GroupSurvivalRate6Ruthless=((5*1)+(1*Call5$FindAs1))/6
Call5$GroupSurvivalRate7Fair=((4*Call5$FindAs3Jerk)+(3*Call5$FindAs4Jerk))/7
Call5$GroupSurvivalRate7Ruthless=((5*1)+(2*Call5$FindAs2Jerk))/7
Call5$GroupSurvivalRate6=pmax(Call5$GroupSurvivalRate6Fair1,Call5$GroupSurvivalRate6Fair2,Call5$GroupSurvivalRate6Ruthless)
Call5$GroupSurvivalRate7=pmax(Call5$GroupSurvivalRate7Fair,Call5$GroupSurvivalRate7Ruthless)

##Call6##

Call6$GroupSurvivalRate1=Call6$FindAs1
Call6$GroupSurvivalRate2=Call6$FindAs2Jerk
Call6$GroupSurvivalRate3=Call6$FindAs3Jerk
Call6$GroupSurvivalRate4=Call6$FindAs4Jerk
Call6$GroupSurvivalRate5=Call6$FindAs5Jerk
Call6$GroupSurvivalRate6=1
Call6$GroupSurvivalRate7Fair1=((5*Call6$FindAs5Jerk)+(2*Call6$FindAs2Jerk))/7
Call6$GroupSurvivalRate7Fair2=((4*Call6$FindAs4Jerk)+(3*Call6$FindAs3Jerk))/7
Call6$GroupSurvivalRate7Ruthless=((6*1)+(Call6$FindAs1))/7
Call6$GroupSurvivalRate7=pmax(Call6$GroupSurvivalRate7Fair1,Call6$GroupSurvivalRate7Fair2,Call6$GroupSurvivalRate7Ruthless)

##Call7##

Call7$GroupSurvivalRate1=Call7$FindAs1
Call7$GroupSurvivalRate2=Call7$FindAs2Jerk
Call7$GroupSurvivalRate3=Call7$FindAs3Jerk
Call7$GroupSurvivalRate4=Call7$FindAs4Jerk
Call7$GroupSurvivalRate5=Call7$FindAs5Jerk
Call7$GroupSurvivalRate6=Call7$FindAs6Jerk
Call7$GroupSurvivalRate7=1

##Call8##

Call8$GroupSurvivalRate1=Call8$FindAs1
Call8$GroupSurvivalRate2=Call8$FindAs2Jerk
Call8$GroupSurvivalRate3=Call8$FindAs3Jerk
Call8$GroupSurvivalRate4=Call8$FindAs4Jerk
Call8$GroupSurvivalRate5=Call8$FindAs5Jerk
Call8$GroupSurvivalRate6=Call8$FindAs6Jerk
Call8$GroupSurvivalRate7=Call8$FindAs7Jerk

##Call9##

Call9$GroupSurvivalRate1=Call9$FindAs1
Call9$GroupSurvivalRate2=Call9$FindAs2
Call9$GroupSurvivalRate3=Call9$FindAs3Jerk
Call9$GroupSurvivalRate4=Call9$FindAs4Jerk
Call9$GroupSurvivalRate5=Call9$FindAs5Jerk
Call9$GroupSurvivalRate6=Call9$FindAs6Jerk
Call9$GroupSurvivalRate7=Call9$FindAs7Jerk

##Call10##

Call10$GroupSurvivalRate1=Call10$FindAs1
Call10$GroupSurvivalRate2=Call10$FindAs2
Call10$GroupSurvivalRate3=Call10$FindAs3
Call10$GroupSurvivalRate4=Call10$FindAs4Jerk
Call10$GroupSurvivalRate5=Call10$FindAs5Jerk
Call10$GroupSurvivalRate6=Call10$FindAs6Jerk
Call10$GroupSurvivalRate7=Call10$FindAs7Jerk


##Group Analysis Group##


Group_Analysis$GroupSurviveCall3=c(mean(Call3$GroupSurvivalRate1),mean(Call3$GroupSurvivalRate2),mean(Call3$GroupSurvivalRate3),mean(Call3$GroupSurvivalRate4),
                                   mean(Call3$GroupSurvivalRate5),mean(Call3$GroupSurvivalRate6),mean(Call3$GroupSurvivalRate7))
Group_Analysis$GroupSurviveCall4=c(mean(Call4$GroupSurvivalRate1),mean(Call4$GroupSurvivalRate2),mean(Call4$GroupSurvivalRate3),mean(Call4$GroupSurvivalRate4),
                                   mean(Call4$GroupSurvivalRate5),mean(Call4$GroupSurvivalRate6),mean(Call4$GroupSurvivalRate7))
Group_Analysis$GroupSurviveCall5=c(mean(Call5$GroupSurvivalRate1),mean(Call5$GroupSurvivalRate2),mean(Call5$GroupSurvivalRate3),mean(Call5$GroupSurvivalRate4),
                                   mean(Call5$GroupSurvivalRate5),mean(Call5$GroupSurvivalRate6),mean(Call5$GroupSurvivalRate7))
Group_Analysis$GroupSurviveCall6=c(mean(Call6$GroupSurvivalRate1),mean(Call6$GroupSurvivalRate2),mean(Call6$GroupSurvivalRate3),mean(Call6$GroupSurvivalRate4),
                                   mean(Call6$GroupSurvivalRate5),mean(Call6$GroupSurvivalRate6),mean(Call6$GroupSurvivalRate7))
Group_Analysis$GroupSurviveCall7=c(mean(Call7$GroupSurvivalRate1),mean(Call7$GroupSurvivalRate2),mean(Call7$GroupSurvivalRate3),mean(Call7$GroupSurvivalRate4),
                                   mean(Call7$GroupSurvivalRate5),mean(Call7$GroupSurvivalRate6),mean(Call7$GroupSurvivalRate7))
Group_Analysis$GroupSurviveCall8=c(mean(Call8$GroupSurvivalRate1),mean(Call8$GroupSurvivalRate2),mean(Call8$GroupSurvivalRate3),mean(Call8$GroupSurvivalRate4),
                                   mean(Call8$GroupSurvivalRate5),mean(Call8$GroupSurvivalRate6),mean(Call8$GroupSurvivalRate7))
Group_Analysis$GroupSurviveCall9=c(mean(Call9$GroupSurvivalRate1),mean(Call9$GroupSurvivalRate2),mean(Call9$GroupSurvivalRate3),mean(Call9$GroupSurvivalRate4),
                                   mean(Call9$GroupSurvivalRate5),mean(Call9$GroupSurvivalRate6),mean(Call9$GroupSurvivalRate7))
Group_Analysis$GroupSurviveCall10=c(mean(Call10$GroupSurvivalRate1),mean(Call10$GroupSurvivalRate2),mean(Call10$GroupSurvivalRate3),mean(Call10$GroupSurvivalRate4),
                                   mean(Call10$GroupSurvivalRate5),mean(Call10$GroupSurvivalRate6),mean(Call10$GroupSurvivalRate7))

Group_Analysis$AverageGroupSurvivalRate=(Group_Analysis$GroupSurviveCall3+Group_Analysis$GroupSurviveCall4+Group_Analysis$GroupSurviveCall5+
                                        Group_Analysis$GroupSurviveCall6+Group_Analysis$GroupSurviveCall7+Group_Analysis$GroupSurviveCall8+
                                        Group_Analysis$GroupSurviveCall9+Group_Analysis$GroupSurviveCall10)/8

##Ta-Da##
