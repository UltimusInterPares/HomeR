source("/cloud/project/Mining Homer/Full Miner/HomeR.R")

### Create Filtered Tibbles
### Book 1
HiatusTibble <- IliadTibble %>%
  filter(str_detect(Word, "\\w*[αηιωυεο][αηιωυεοϊϋ]{1,3}\\w*\\b") == T) %>%
  filter(!str_detect(Word, "\\w*[αηιωυεο][αηωεοϊϋ]{1,3}\\w*\\b") == F) %>%
  filter(str_detect(Book, "1") == T)

View(HiatusTibble, title = "Hiatus")

### Filtering Results
HiatusTibble %>%
  filter(str_detect(Word, "αειδ\\w+") == F) %>%
  filter(str_detect(Word, "θε\\w{1,4}") == F) %>%
  filter(str_detect(Word, "πηλη\\w{1,4}") == F) %>%
  filter(str_detect(Word, "αχαι\\w{1,4}") == F) %>%
  filter(str_detect(Word, "αχι(λ|λλ)\\w{1,4}") == F) %>%
  filter(str_detect(Word, "αϊδ\\w{1,4}") == F) %>%
  filter(str_detect(Word, "(ϊαπτ|ϊαψ|ιαπτ|ιαψ)\\w{1,4}") == F) %>%
  View(title = "Filtered Hiatus")

