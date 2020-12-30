source("/cloud/project/Mining Homer/Full Miner/Build4.R")

HeraclesTibble <- IliadTibble %>%
  filter(str_detect(Word, "ηρακ\\w*\\b") == T)

View(HeraclesTibble, title = "Heracles")