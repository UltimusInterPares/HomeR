library(stringr)

applysoundchange <- function(input = NULL) {
  string <- input
  
  ##### PIE to Early Pre-Greek #####
  ### The Greek Palatalization ###
  
  # First Palatalization
    string <- gsub("(tj|tʰj)", "ts", string)
    string <- gsub("dj", "dz", string)
  
    string <- gsub("(ts|ds|tʰs)", "ts", string)
  
  #S econd Palataliztion
    string <- gsub("(ḱj)", "kj", string)
    string <- gsub("(kʷj|kj)", "\\1", string)
    
    string <- gsub("ǵʰj", "kʰj", string)
    string <- gsub("ǵʰʷj", "kʰʷj", string)
    
    string <- gsub("bʰj", "pʰj", string)
  
  # J-Elision
  # We'll sort out the rest of the palatalizations at home
    string <- gsub("([aeiouy])(l)j", "\\1\\2\\2", string)
    string <- gsub("([aeiouy])j([aeiouy])", "\\1\\2", string)
    string <- gsub("([aeiouy])([hbgdzqklmnjprstfxcw])j", "\\1j\\2", string)
  
  # S-Elision 1
    #string <- gsub("([aeiouy])(s)([aeiouy])", "\\1h\\2", string) # Intervocalic --- really doubting the necessity of this particular line
    string <- gsub("(s)([aeiouy])", "h\\2", string) # Prevocalic
    string <- gsub("^s", "h", string)
  
  ##### Common Hellenic to Attic-Ionic #####
  # S-Elision 2
    string <- gsub("([aeiouy])([hbgdzqklmnjprstfxcw])h", "\\1:\\2", string)
    string <- gsub("h", "", string)
    
  # Contraction
  # A series
    string <- gsub("aa", "a:", string)
    string <- gsub("aa:", "a:", string)
    string <- gsub("aaĭ", "aĭ", string)
    string <- gsub("aa:ĭ", "a:ĭ", string)
    string <- gsub("ae", "a:", string)
    string <- gsub("aeĭ", "a:ĭ", string)
    string <- gsub("ae:", "a:", string)
    string <- gsub("aɛ:", "a:", string)
    string <- gsub("aɛ:ĭ", "a:ĭ", string)
    string <- gsub("ai", "aĭ", string)
    string <- gsub("ao", "ɔ:", string)
    string <- gsub("aoĭ", "ɔ:ĭ", string)
    string <- gsub("ao:", "ɔ:", string)
    string <- gsub("aɔ:", "ɔ:", string)
  
    string <- gsub("a:a", "a:", string)
    string <- gsub("a:e", "ɛ:", string)
    string <- gsub("a:i", "a:ĭ", string)
    string <- gsub("a:o", "ɔ:", string)
    string <- gsub("a:ɔ:", "ɔ:", string)
  
  # E series
    string <- gsub("ea", "ɛ:", string)
    string <- gsub("ea:", "ɛ:", string)
    string <- gsub("eaĭ", "ɛ:ĭ", string)
    string <- gsub("ee", "e:", string)
    string <- gsub("eeĭ", "eĭ", string)
    string <- gsub("ee:", "e:", string)
    string <- gsub("eɛ:", "ɛ:", string)
    string <- gsub("eɛ:ĭ", "ɛ:ĭ", string)
    string <- gsub("eĭ", "eĭ", string)
    string <- gsub("eo", "o:", string)
    string <- gsub("eoĭ", "oĭ", string)
    string <- gsub("eo:", "o:", string)
    string <- gsub("eu", "eŭ", string)
    string <- gsub("eɔ:", "ɔ:", string)
    string <- gsub("eɔ:ĭ", "ɔ:ĭ", string)
  
  # H series
    string <- gsub("ɛ:aĭ", "ɛ:ĭ", string)
    string <- gsub("ɛ:e", "ɛ:", string)
    string <- gsub("ɛ:eĭ", "ɛ:ĭ", string)
    string <- gsub("ɛ:e:", "ɛ:", string)
    string <- gsub("ɛ:ɛ:", "ɛ:", string)
    string <- gsub("ɛ:ɛ:ĭ", "ɛ:ĭ", string)
    string <- gsub("ɛ:i", "ɛ:ĭ", string)
    string <- gsub("ɛ:oĭ", "ɔ:ĭ", string)
  
  # O series
    string <- gsub("oa", "ɔ:", string)
    string <- gsub("oe", "o:", string)
    string <- gsub("oeĭ", "oĭ", string)
    string <- gsub("oe:", "o:", string)
    string <- gsub("oɛ:", "ɔ:", string)
    string <- gsub("oɛ:ĭ", "ɔ:ĭ", string)
    string <- gsub("oi", "oĭ", string)
    string <- gsub("oo", "o:", string)
    string <- gsub("ooĭ", "oĭ", string)
    string <- gsub("oo:", "o:", string)
    string <- gsub("oɔ:", "ɔ:", string)
    string <- gsub("oɔ:ĭ", "ɔ:ĭ", string)
  
  # AI Vowel Shift 1
    string <- gsub("a:", "æ:", string)
  
  ##### Attic #####
  # Rueckverwandlung 1
    string <- gsub("ræ:", "ra:", string)
  
  # W-Elision
    string <- gsub("w", "", string)
  
  # Rueckverwandlung 2
    string <- gsub("(e|i|e:|i:)æ:", "\\1a:", string)
  
  # AI Vowel Shift 2
    string <- gsub("æ:", "ɛ:", string)
  
  return(string)
}

test <- c("*kalwos", "kaljos", "kalsos", "korwa:", "newa:", "genesos", "genewa:")
#applysoundchange(input = test)
#applysoundchange(test)

# ɛ: ɔ: æ: ŭ ĭ
