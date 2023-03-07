#Getting the current working directory
print(getwd())

#Reading the csv file
read.csv("covid_19_india.csv") -> covid_final
view(covid_final)

#Installing the dplyr package
library(dplyr)

#Using the pipe operator and selecting the specific column
covid_final %>%select(Date,State.UnionTerritory,Cured,Deaths,Confirmed) -> covid_final
view(covid_final)

#Renaming the state column
covid_final %>% rename(state = State.UnionTerritory)

##Viewing the top & bottom 10 rows
head(covid_final,10)
tail(covid_final,10)

##covid_final %>% filter(date == "2020-01-31") -> latest_cases

#Using descending function to see the highest
covid_final %>% arrange(desc(Cured)) -> cured
view(cured)

#View Top 5 cases
cured[0:5,] -> top5
view(top5)

#Data visualizing the covid_final
library(ggplot2)
ggplot(data = covid_final ,aes(x=State.UnionTerritory,y=Confirmed,col=State.UnionTerritory))+geom_boxplot()

#Summarize the all 
summary(covid_final)
