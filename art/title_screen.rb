# rubocop:disable all
#-----------------------------YOUR CODE BELOW---------------------------------->

# Game Over

def lose_art
  puts <<-'ASCII'

    ▓██   ██▓ ▒█████   █    ██    ▓█████▄  ██▓▓█████ ▓█████▄
     ▒██  ██▒▒██▒  ██▒ ██  ▓██▒   ▒██▀ ██▌▓██▒▓█   ▀ ▒██▀ ██▌
      ▒██ ██░▒██░  ██▒▓██  ▒██░   ░██   █▌▒██▒▒███   ░██   █▌
      ░ ▐██▓░▒██   ██░▓▓█  ░██░   ░▓█▄   ▌░██░▒▓█  ▄ ░██▄   ▌
      ░ ██▒▓░░ ████▓▒░▒▒█████▓    ░▒████▓ ░██░░▒████▒░▒████▓  ██▓  ██▓  ██▓
       ██▒▒▒ ░ ▒░▒░▒░ ░▒▓▒ ▒ ▒     ▒▒▓  ▒ ░▓  ░░ ▒░ ░ ▒▒▓  ▒  ▒▓▒  ▒▓▒  ▒▓▒
     ▓██ ░▒░   ░ ▒ ▒░ ░░▒░ ░ ░     ░ ▒  ▒  ▒ ░ ░ ░  ░ ░ ▒  ▒  ░▒   ░▒   ░▒
     ▒ ▒ ░░  ░ ░ ░ ▒   ░░░ ░ ░     ░ ░  ░  ▒ ░   ░    ░ ░  ░  ░    ░    ░
     ░ ░         ░ ░     ░           ░     ░     ░  ░   ░      ░    ░    ░
     ░ ░                           ░                  ░        ░    ░    ░
  ASCII
end

def win_art
  puts <<-'ASCII'
  __  __                 __________                                ______________
  _ \/ /_________  __    ___  ____/__________________ ___________________  /__  /
  __  /_  __ \  / / /    __  __/  __  ___/  ___/  __ `/__  __ \  _ \  __  /__  /
  _  / / /_/ / /_/ /     _  /___  _(__  )/ /__ / /_/ /__  /_/ /  __/ /_/ /  /_/
  /_/  \____/\__,_/      /_____/  /____/ \___/ \__,_/ _  .___/\___/\__,_/  (_)
                                                      /_/
  ASCII
end

def play_again
  puts <<-'ASCII'

  █▀█ █▀█ █▀▀ █▀ █▀   █▀ █▄█ ▀█   ▀█▀ █▀█   █▀█ █░░ ▄▀█ █▄█   ▄▀█ █▀▀ ▄▀█ █ █▄░█ 
  █▀▀ █▀▄ ██▄ ▄█ ▄█   █▄ ░█░ ▄█   ░█░ █▄█   █▀▀ █▄▄ █▀█ ░█░   █▀█ █▄█ █▀█ █ █░▀█ 
  ASCII
end

# Title Screen

def title_screen
  puts <<-'ASCII'

███████████████████████████████████████████████████████████████████████████▀███████
█─▄▄▄─██▀▄─██─▄▄▄▄█─▄─▄─█▄─▄███▄─▄▄─███─▄▄▄─██▀▄─██▄─▄▄▀█▄─▀█▄─▄██▀▄─██─▄▄▄▄█▄─▄▄─█
█─███▀██─▀─██▄▄▄▄─███─████─██▀██─▄█▀███─███▀██─▀─███─▄─▄██─█▄▀─███─▀─██─██▄─██─▄█▀█
▀▄▄▄▄▄▀▄▄▀▄▄▀▄▄▄▄▄▀▀▄▄▄▀▀▄▄▄▄▄▀▄▄▄▄▄▀▀▀▄▄▄▄▄▀▄▄▀▄▄▀▄▄▀▄▄▀▄▄▄▀▀▄▄▀▄▄▀▄▄▀▄▄▄▄▄▀▄▄▄▄▄▀

                                    |>>>
                                    |
                      |>>>      _  _|_  _         |>>>
                      |        |;| |;| |;|        |
                  _  _|_  _    \\.    .  /    _  _|_  _
                  |;|_|;|_|;|    \\:. ,  /    |;|_|;|_|;|
                  \\..      /    ||;   . |    \\.    .  /
                   \\.  ,  /     ||:  .  |     \\:  .  /
                    ||:   |_   _ ||_ . _ | _   _||:   |
                    ||:  .|||_|;|_|;|_|;|_|;|_|;||:.  |
                    ||:   ||.    .     .      . ||:  .|
                    ||: . || .     . .   .  ,   ||:   |       \,/
                    ||:   ||:  ,  _______   .   ||: , |            /`\
                    ||:   || .   /+++++++\    . ||:   |
                    ||:   ||.    |+++++++| .    ||: . |
                 __ ||: . ||: ,  |+++++++|.  . _||_   |
        ____--`~    '--~~__|.    |+++++__|----~    ~`---,              ___
   -~--~                   ~---__|,--~'                  ~~----_____-~'   `~----~~

  ㄚㄖㄩ 闩讠𝓝丶〸 ﾁ尺ㄖ爪 闩尺ㄖㄩ𝓝ᗪ 卄🝗尺🝗... 山卄ㄖ 闩尺🝗 丫ㄖㄩ?
  ASCII
end

# Main to Boss Transition

def moving_on
  art = { id: :title, art:
  <<-'ASCII'
                    dS$$S$S$S$S$S$S$$Sb
                   :$$S^S$S$S$S$S$S^S$$;
                   SSP   `^$S$S$^'   TSS
                   $$       `"'       $$      ㄚㄖㄩ 爪🝗尺长🝗ᗪ 
                  _SS ,-           -  SS_       〸卄🝗 ﾁ㇄ㄩ𝓝长讠🝗丂
                 :-.|  _    - .-   _  |.-;
                 :\(; ' "-._.'._.-" ` |)/;
                  \`|  , o       o .  |'/
                   ":     -'   `-     ;"
                     ;.              :      ㄒ卄🝗 ⻏ㄖ丂丂 山闩𝓝〸丂
                     : `    ._.    ' ;         闩 山ㄖ尺ᗪ 山讠セ卄 丫ㄖㄩ
                   .sSb   ._____.   dSs.
                _.d8dSSb.   ._.   .SSbT8b._
            _.oOPd88SSSS T.     .P SSSS888OOo.
        _.mMMOOPd888SSSSb TSqqqSP dSSSS88OMOOOMm._
     .oOMMMOMOOM8O8OSSSSSb TSSSP dSSSSS8OOMMOOMMOOOo._
   .OOMMOOOMMOOMOOOO  "^SSSTSSP dSSS^"OOOOMMOOMMMOOMMMb.
  dOOOMMMOMMOOOMOOOO      "^SSSS^"   :OOO8MMMOOMMOOMMOMMb
 :MMMOOMMOMMOOMMO8OS         `P      8O8OPdMMOOMMOMMOMMMM;
 MMMMOOMMMMMOOMbTO8S;               :8888MMMMMOMMOMMOMMMMM
 OMMMMOOMMMMOOOMMOOOS        S     :O8OPdMOMMMOMOMMOOMMMMO
:OMMMMOOMMOMMOOMbTObTb.     :S;   .PdOPdMOOMMMMMOMMOMMMMMO;
MOOMMMMOMMOMMOOMMMOObTSSg._.SSS._.PdOPdMOOMMMMOMMMMOMMMMOOM
MMOMMMMOMMMOMMOOMMbT8bTSSSSSSSSSPd8OPdOOOMMMMOOMMMMOMMMOOMM
MMOMMMOMMMMMOMMOOMMMbT8bTSSSSSPd88PdOOOOMMMMOOMMMMMMMMOOMMM
  ASCII
  }
end
