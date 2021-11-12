##exercise08
##abi batkoff

#Install Package
library(ggplot2)

###Question 1
setwd("/Users/abigaylebatkoff/Downloads/MBA Year 1/Biocomputing//Biocomp-Exercise08")

game<-read.table("UWvMSU_1-22-13.txt", sep="\t", header = TRUE)


#separate score for each team
UWscore<-game[(game$team=="UW"),]
MSUscore<-game[(game$team=="MSU"),]

UWscore
MSUscore


#make score cumulative
UWscore[,"cumscoreUW"]<-cumsum(UWscore$score)
MSUscore[,"cumscoreMSU"]<-cumsum(MSUscore$score)



ggplot() + 
  geom_line(data = UWscore, aes(x = time, y = cumscoreUW), color = "black") +
  geom_line(data = MSUscore, aes(x = time, y = cumscoreMSU), color = "blue") +
  xlab('Time (in minutes)') +
  ylab('Points Scored')

###Question 2
readnumber <- function()
{ y <- readline(prompt="Guess My Number: ")
if(!grepl("^[0-9]+$",y))
{return(readnumber())
}
return(as.integer(y))
}

x<-sample(1:100)
n<-1

print("Guess a number between 0 and 100")
while(n != x)
{ 
  n <- readnumber()
  if (n == x)
  {
    print("Correct!")
  }
  else if (n < x)
  {
    print("Higher")
  }
  else if(n > x)
  {
    print("Lower")
  }
}





