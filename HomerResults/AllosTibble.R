source("/cloud/project/Mining Homer/Full Miner/HomeR.R")

GeminateTibble <- IliadTibble %>%
  filter(str_detect(Word, "\\w+λλ\\w*") == T)
  
View(GeminateTibble, title = "ἄλλος")

GeminateTibble %>%
  count(Word, sort = TRUE) %>%
  filter(n>=10) %>%
  mutate(Word = reorder(Word, n)) %>%
  ggplot(aes(Word, n)) +
  theme_classic() +
  #theme_light() +
  theme(axis.text.x = element_text(angle = 90), text=element_text(family ="CM Roman")) +
  geom_col() +
  geom_text(aes(label=n), position=position_dodge(width=0.9), vjust=-0.25) +# This line labels the bars
  ggtitle("Geminates:", subtitle = "ἄλλος") +
  xlab(NULL)
