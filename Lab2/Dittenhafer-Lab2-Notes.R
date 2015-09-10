getwd()

load("Lab2/more/kobe.RData")

head(kobe)

kobe$basket[1:9]


kobe_streak <- calc_streak(kobe$basket)
barplot(table(kobe_streak))

outcomes <- c("heads", "tails")
sample(outcomes, size = 1, replace = TRUE)

sim_fair_coin <- sample(outcomes, size = 100000, replace = TRUE)

#sim_fair_coin
table(sim_fair_coin)


sim_unfair_coin <- sample(outcomes, size = 100, replace = TRUE, prob = c(0.2, 0.8))
table(sim_unfair_coin)


outcomes <- c("H", "M")
sim_basket2 <- sample(outcomes, size = 133, replace = TRUE, prob=c(0.60, 0.40))
barplot(table(calc_streak(sim_basket2)))