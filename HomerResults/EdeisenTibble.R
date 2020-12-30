source("/cloud/project/Mining Homer/Full Miner/HomeR.R")

EdeisenTibble <- IliadTibble %>%
  filter(str_detect(Word, "εδεισεν") == T)

View(EdeisenTibble, title = "ἔδεισεν")