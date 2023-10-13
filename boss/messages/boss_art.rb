# rubocop:disable all
#-----------------------------YOUR CODE BELOW---------------------------------->

def big_boss_art
  art = { id: :move, art:
  <<-'ASCII'
                    / ___`\
         /|        ( (   \ \
    |^v^v  V|       \ \/) ) )
    \  ____ /        \_/ / /
    ,Y`    `,           / /
    ||  -  -)          { }
    \\   _\ |          | |
     \\ / _`\_         / /
     / |  ~ | ``\     _|_|
  ,-`  \    |  \ \  ,//(_}
 /      |   |   | \/  \| |
|     | \   /   | '   ,\ \
\     |  | |    /\  _/` | |
 |    \  \ |   |  ``    | |
 |    |   |/   |        / /
    ASCII
  }
end

def the_barkeep
  art = { id: :move, art: # this art is a combination of 2 pieces
  <<-'ASCII'              # spacing is warped here for correct display on terminal
                    _____
                  __|___|__
                   ('o_o')
⢸⣷⣶⣤⡀              _\~-~/_    ______.   ⣤⣶⣾⡇
⢸⡟⠛⠛⢻⣦⡀           //\__/\ \ ~(_]---' ⢀⣴⡟⠛⠛⢻⡇
⢸⡟⠛⠛⠛⠛⢻⣶⣤⣀⡀      / )O  O( .\/_)  ⢀⣀⣤⣶⡟⠛⠛⠛⠛⢻⡇
⢸⣟⣛⣛⣛⣛⣛⣛⣛⣛⣛⣻⡇    \ \    / \_/  ⢸⣟⣛⣛⣛⣛⣛⣛⣛⣛⣛⣛⣻⡇
⢸⣏⣉⣉⣉⣉⣉⣉⣉⣉⣉⣻⡇    )/_|  |_\     ⢸⣟⣉⣉⣉⣉⣉⣉⣉⣉⣉⣉⣻⡇
⢸⣏⣉⣉⣉⣉⣉⣉⣉⣉⣉⡏⢁⡀  // /(\/)\ \    ⢀⡈⢹⣉⣉⣉⣉⣉⣉⣉⣉⣉⣹⡇
⢸⣏⣉⣉⣉⣉⣉⣉⣉⣉⣩⡇⢸⡇  /_/      \_\   ⢸⡇⢸⣍⣉⣉⣉⣉⣉⣉⣉⣉⣹⡇
 ⣯⣭⣭⣭⣭⣭⣭⣭⣭⣭⡇⠘⠃ (_||      ||_)  ⠘⠃⢸⣭⣭⣭⣭⣭⣭⣭⣭⣭⣻⡇
⢸⣧⣤⣤⣤⣤⣤⣤⣤⣤⣬⣿⡇    \| |__| |/    ⠀⢸⣿⣥⣤⣤⣤⣤⣤⣤⣤⣤⣼⡇
⢸⣧⣤⣤⣤⣤⣤⣤⣤⣤⣤⣿⡇     | |  | |      ⢸⣿⣤⣤⣤⣤⣤⣤⣤⣤⣼⡇
⢸⣧⣤⣤⣤⣤⣤⣤⣤⣤⣤⣾⡇     |_|  |_|     ⠀⢸⣷⣤⣤⣤⣤⣤⣤⣤⣤⣷⡇
                  /_\  /_\
    ASCII
     }
end

def the_bouncer
  art = { id: :move, art:
  <<-'ASCII'
                     ______
                   <((((((\\\
                   /      . }\
                   ;--..--._|}
(\                 '--/\--'  )
 \\                | '-'  :'|
  \\               . -==- .-|
   \\               \.__.'   \--._
   [\\          __.--|       //  _/'--.
   \ \\       .'-._ ('-----'/ __/      \
    \ \\     /   __>|      | '--.       |
     \ \\   |   \   |     /    /       /
      \ '\ /     \  |     |  _/       /
       \  \       \ |     | /        /
        \  \       \       /        /
    ASCII
   }
end

def the_band
  art = { id: :move, art:
    <<-'ASCII'

    #####\             _             /#####
    #( )# |          _( )__         | #( )#
    ##### |         /_    /         | #####
    #" "# |     ___m/I_ //_____     | #" "#
    # O # |____#-x.\ /++m\ /.x-#____| # O #
    #m.m# |   /" \ ///###\\\ / "\   | #m.m#
   /#####/    ######/     \######    \#####\
  /                                         \
      ASCII
  }
end

def the_shop
  art = [
    # ASCII art 1
    <<-'ASCII',
            )            (
           /(   (\___/)  )\
          ( #)  \ ('')| ( #)
           ||___c\  > '__||
           ||**** ),_/ **'|
     .__   |'* ___| |___*'|
      \_\  |' (    ~   ,)'|
       ((  |' /(.  '  .)\ |
        \\_|_/ <_ _____> \______________
         /   '-, \   / ,-'      ______  \
        /      (//   \\)     __/     /   \
       /                    './_____/     \
    ASCII
    # ASCII art 2
    <<-'ASCII',
              (`  ).                   _
             (     ).              .:(`  )`.
)           _(       '`.          :(   .    )
        .=(`(      .   )     .--  `.  (    ) )
       ((    (..__.:'-'   .+(   )   ` _`  ) )
`.     `(       ) )       (   .  )     (   )  ._
  )      ` __.:'   )     (   (   ))     `-'.-(`  )
)  )  ( )       --'       `- __.'         :(      ))
.-'  (_.'          .')                    `(    )  ))
                  (_  )                     ` __.:'

--..,___.--,--'`,---..-.--+--.,,-,,..._.--..-._.-:--.
    ASCII
    # ASCII art 3
    <<-'ASCII',
           ,,                               .-.
          || |                               ) )
          || |   ,                          '-'
          || |  | |
          || '--' |
    ,,    || .----'
   || |   || |
   |  '---'| |
   '------.| |                                  _____
   ((_))  || |      (  _                       / /|\ \
   (o o)  || |      ))("),                    | | | | |
____\_/___||_|_____((__^_))____________________\_\|/_/__ldb
    ASCII
    # ASCII art 4
    <<-'ASCII',
          `        .                  `

     *         *          `     *           .          `
                      `       *                 `
    _    .  ,   .           .
        *  / \_ *  / \_      _  *        *   /\'__        *
          /    \  /    \,   ((        .    _/  /  \  *'.
    .   /\/\  /\/ :' __ \_  `          _^/  ^/    `--.
        /    \/  \  _/  \-'\      *    /.' ^_   \_   .'\  *
      /\  .-   `. \/     \ /==~=-=~=-=-;.  _/ \ -. `_/   \
    /  `-.__ ^   / .-'.--\ =-=~_=-=~=^/  _ `--./ .-'  `-
    /        `.  / /       `.~-^=-=~=^=.-'      '-._ `._
    ASCII
    # ASCII art 5
    <<-'ASCII',
           `        .        *      *     _..._  `
             .  `          .     `     .::'     `.    .
                 .      `       `     :::         :
     .========.        .========.     :::         :
    // I .'..' \      // VI.'.,".\    `::.       .'
    || II .'..'|      || VII..'..|      `':.. -'
    || III .'."|      || VIII,'.'|
    || IV ,','.|      || IX.'".'.|   _||_
    || V '..'.'|      || X .'..',|  '-..-'
    .\_________/      .\_________/    ||
  .-"`   `"`'`   `"-..-"          `"-.||
.'                                    `".
    ASCII
     # ASCII art 6
    <<-'ASCII',
                               ___
            (               __|___|__
             )                .,.  )
            (  (              \=__/
                )             ,'-'.
          (    (  ,,      _.__|/ /|
           ) /\ -((------((_|___/ |
         (  // | (`'      ((  `'--|
       _ -.;_/ \\--._      \\ \-._/.
      (_;-// | \ \-'.\    <_,\_\`--'|
      ( `.__ _  ___,')      <_,-'__,'
       `'(_ )_)(_)_)'
    ASCII
  ]

  shop = { id: :shop, art: art.sample }
end
