# rubocop:disable all
#-----------------------------YOUR CODE BELOW---------------------------------->

# change text color in terminal with these codes

# Red:          \e[31m Text \e[0m
# Green:        \e[32m Text \e[0m
# Yellow:       \e[33m Text \e[0m
# Blue:         \e[34m Text \e[0m
# Magenta:      \e[35m Text \e[0m
# Cyan:         \e[36m Text \e[0m
# White:        \e[37m Text \e[0m
# Orange: \e[38;5;208m Text \e[0m

RD = "\e[31m"
GN = "\e[32m"
YL = "\e[33m"
BL = "\e[34m"
MG = "\e[35m"
CN = "\e[36m"
WH = "\e[37m"
OR = "\e[38;5;208m"
ML = "\e[3#{rand(1..6)}m"
CL = "\e[0m"

# various ASCII separators

ICONS = [
  '⇍', '⇎', '⇏', '⇌', '⇖', '⇗', '⇘', '⇙', '⇚', '⇛', '⇜', '⇝', '⇞', '⇟', '⇠', '⇡', '⇢',
   '⇣', '⇤', '⇥', '⇦', '⇧', '⇨', '⇩', '⇪', '⇫', '⇬', '⇭', '⇮', '⇯', '⇰', '⇱', '⇲', '⇳', '⇺',
   '▢', '▣', '▭', '◊', '→', '←', '↟', '⌖', '⇽', '⇻', '⇺,' '⇏', '⇎', '⇄', '≉', '↖', '≌', '↤',
   '↝', '↜', '↗', '≉', '⋘', '⋙',
  ]


SEPARATOR = "#{ML}#{ICONS.sample}#{CL}" * 80
BARRIER = "#{OR}#{ICONS.sample}#{CL}" * 76
ENEMY_DIV = "#{GN}#{ICONS.sample}#{CL}" * 76
BOSS_DIV = "#{MG}#{ICONS.sample}#{CL}" * 76

# In game display tags

FOUR =       "#{RD}[̳4̳]̳#{CL}"
FIVE =       "#{GN}[̳5̳]̳#{CL}"
SIX =        "#{BL}̝̫[̳6̳]̳#{CL}"
SEVEN =      "#{OR}[̳7̳]̳#{CL}"
NINE =       "#{CN}̘[̳9̳]̳#{CL}"
HANGOVER =   "#{OR}ℍ𝔸ℕ𝔾𝕆𝕍𝔼ℝ#{CL}"
BONUS =      "#{YL}🪅 ℬ𝒪𝒩𝒰𝒮 🎊#{CL}"
BUFF =       "#{CN}𝓑𝓤𝓕𝓕#{CL}"
CASH =       "#{GN}🄲🄰🅂🄷#{CL}"
HP_PLUS =    "#{GN}ＭＵＮＣＨ#{CL}"
HP_MINUS =   "#{RD}ᗪ㠪乃ㄒ#{CL}"
ENEMY_HP =   "#{RD}🆃🅷🅸🅴🅵#{CL}"
ENEMY_TRAP = "#{GN}ƬᖇᎯᕈ#{CL}"
WEAPON =     "#{OR}𝓦𝓔𝓐𝓟𝓞𝓝#{CL}"
BROKE =      "#{RD}𝐁𝐑𝐎𝐊𝐄#{CL}"
RAGE =       "#{OR}R̷A̷G̷E̷#{CL}"
CRITICAL =   "#{OR}𝙲𝚁𝙸𝚃𝙸𝙲𝙰𝙻#{CL}"
MISSED =     "#{BL}𝙼𝙸𝚂𝚂#{CL}"
HIT =        "#{RD}𝙷𝙸𝚃#{CL}"
COUNTER =    "#{CN}ℂ𝕆𝕌ℕ𝕋𝔼ℝ#{CL}"
SUCCESS =    "#{GN}🎈 𝓢𝓤𝓒𝓒𝓔𝓢𝓢 🎉#{CL}"
FLUNKED =    "#{RD}🫵🏼ƑԼ𝓤ƝⲔƐƊ 😅#{CL}"
SUMMON =     "#{MG}𝓢𝓟𝓐𝓦𝓝#{CL}"
SURPRISE =   "#{YL}𝘚𝘜𝘙𝘗𝘙𝘐𝘚𝘌#{CL}"
PWNED =      "#{RD}𝕡𝕨𝕟𝕖𝕕#{CL}"
CARD =       "#{OR}ⲤⲀꞄⲆ#{CL}"
BLACKJACK =  "#{OR}🎌 乃㇄闩⼕长丿闩⼕长 🎌#{CL}"
