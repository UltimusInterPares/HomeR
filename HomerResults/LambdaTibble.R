source("/cloud/project/Mining Homer/Full Miner/HomeR.R")

LambdaTibble <- IliadTibble %>%
  filter(str_detect(Word, "λ(σ|ς)") == T)

View(LambdaTibble, title = "λσ")
