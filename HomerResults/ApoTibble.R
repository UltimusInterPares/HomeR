source("/cloud/project/Mining Homer/Full Miner/HomeR.R")

ApoTibble <- IliadTibble %>%
  filter(str_detect(Word, "α(πο|π᾽|φ᾽)") == T)%>%
  View(title = "apo")