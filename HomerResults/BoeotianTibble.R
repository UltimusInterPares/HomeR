source("/cloud/project/Mining Homer/Full Miner/Build4.R")

BoeotianTibble <- IliadTibble %>%
  filter(str_detect(Word, "\\w*[Ββ]οιωτ\\w*\\b") == T)

View(BoeotianTibble, title = "Boeotian")
