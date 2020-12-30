source("/cloud/project/Mining Homer/Full Miner/HomeR.R")

TisTibble <- IliadTibble %>%
  filter(str_detect(Word, "(^τις|^τιν\\w*)") == T)

RoseTibble <- IliadTibble %>%
  filter(str_detect(Word, "^ροδ\\w{2,3}") == T)

PoineTibble <- IliadTibble %>%
  filter(str_detect(Word, "^ποιν\\w{1,3}$") == T)

PallasTibble <- IliadTibble %>%
  filter(str_detect(Word, "παλλα\\w{1,3}") == T)

TeTibble <- IliadTibble %>%
  filter(str_detect(Word, "^τε$") == T)

PremnonTibble <- IliadTibble %>%
  filter(str_detect(Word, "πρεμν\\w{1,3}$") == T)

BasileusTibble <- IliadTibble %>%
  filter(str_detect(Word, "βασιλε\\w{1,3}") == T)

RinosTibble <- IliadTibble %>%
  filter(str_detect(Word, "^ριν\\w{1,3}") == T)

AstyokeTibble <- IliadTibble %>%
  filter(str_detect(Word, "αστυοχ\\w{1,3}"))

View(TisTibble, title = "Tis")
View(RoseTibble, title = "Rodon")
View(PoineTibble, title = "Poine")
View(PallasTibble, title = "Pallas") # possibly long v short 'kai' before 'Pallas'
View(TeTibble, title = "Te")
View(RinosTibble, title = "Rinos")

View(AstyokeTibble, title = "Astyoke")

PolosTibble <- IliadTibble %>%
  filter(str_detect(Word, "^\\w*πολ(ο\\w{1,2}|ω\\w{1}|εσσ\\w*)$"))

View(PolosTibble, title = "-Polos")
