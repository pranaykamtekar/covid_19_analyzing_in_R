print(getwd())
read.csv("covid_19_india.csv") -> covid_final
view(covid_final)
library(dplyr)
covid_final %>%select(Date,State.UnionTerritory,Cured,Deaths,Confirmed) -> covid_final
view(covid_final)
covid_final %>% rename(state = State.UnionTerritory)
head(covid_final,10)
tail(covid_final,10)
##covid_final %>% filter(date == "2020-01-31") -> latest_cases

covid_final %>% arrange(desc(Cured)) -> cured
view(cured)

cured[0:5,] -> top5
view(top5)
library(ggplot2)
ggplot(data = covid_final ,aes(x=State.UnionTerritory,y=Confirmed,col=State.UnionTerritory))+geom_boxplot()
