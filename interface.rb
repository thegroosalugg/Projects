# rubocop:disable all
require_relative 'main/attack_mode'
require_relative 'main/war_machine'
require_relative 'main/escape_room'
require_relative 'boss/big_boss'
require_relative 'boss/powers/blood_magic'
require_relative 'boss/powers/blackjack'
require_relative 'boss/combat/boss_barkeep'
require_relative 'boss/combat/boss_bouncer'
require_relative 'boss/combat/boss_band'
require_relative 'boss/combat/beatdown'
require_relative 'main/messages/enemy_speaks'
require_relative 'main/messages/fighting_talk'
require_relative 'main/messages/not_gonna_get_us'
require_relative 'main/messages/intro_outro'
require_relative 'main/messages/menu'
require_relative 'boss/messages/boss_art'
require_relative 'boss/messages/boss_menu'
require_relative 'boss/messages/talks_with_the_boss'
require_relative 'boss/combat/messages/war_letters'
require_relative 'boss/powers/messages/blood_letters'
require_relative 'boss/powers/messages/bust_or_break'
require_relative 'debug/cheat_mode'
#-----------------------------YOUR CODE BELOW---------------------------------->

def play_game
  print `clear`
  player = { id: :player, hp: rand(275..300), attack: (rand(25..30)..rand(35..40)), block: (1..10), cash: rand(3..10), drunk: 0, kills: 0, rooms: 0, drifter: true }
  name_player(player)
  enemies = []
  3.times { enemies << random_enemy }
  tracked_enemy = enemies.sample
  weapon = pick_weapon
  the_boss = big_boss_awaits

  intro(player, weapon, tracked_enemy)
  state_of_game(enemies, player, weapon)

  while player[:drifter] && player[:hp].positive?

    if weapon[:durability].positive?                              # Fight menu when weapon equipped
      weapon[:broken] = false
      load_menu(player)
      user_choice = gets.chomp.downcase
      # DEBUG CHEAT MENU
      enemies, weapon = cheat_menu(player, enemies, weapon, user_choice)
    else                                                          # Player must run through rooms if weapon broken
      weapon_speaks(weapon, :broke) unless weapon[:broken]
      weapon[:broken] = true
      escape_attempt(enemies, player, weapon)
      user_choice = "y"
    end

    unless player[:chosen]
      case user_choice
      when "t"
        print `clear`
        mortal_kombat(enemies, player, weapon)
      when "r"                                      # Target random enemy with somersault attack
        print `clear`
        somersault_attack(player, enemies, weapon)
      when "y"                                      # Avoid combat and run through rooms. Counter records no. of rooms explored
        print `clear` unless weapon[:broken]
        escape_attempt(enemies, player, weapon) unless weapon[:broken]
        player[:rooms] += 1
        enemies, weapon = explore_rooms(enemies, weapon, player) unless player[:hp] <= 0
      else
        error_message
      end
    else
      case user_choice
      when "4"
        enemies = []
        tracked_enemy = the_boss
        bonus(player)
        big_boss_battle(player, weapon, the_boss)
        player[:drifter] = false
      else
        error_message
      end
    end

    enemies.reject! do |enemy|
      if enemy[:hp] <= 0  # check for enemy deaths, update counter, track last enemy for game over
        player[:kills] += 1
        enemy_speaks(enemy, :pwned)
        tracked_enemy = enemy
        true  # This will remove the enemy from the array
      else
        false  # This will keep the enemy in the array
      end
    end
    
    tracked_enemy = enemies.sample if player[:hp] <= 0 && tracked_enemy[:id] != :boss # Player dies and last enemy is tracked
    player[:chosen] = true if player[:kills] > 4 || enemies.empty? # unlock big boss
    state_of_game(enemies, player, weapon) unless tracked_enemy[:id] == :boss || weapon[:durability].zero?
  end

  state_of_game(enemies, player, weapon) if tracked_enemy[:id] == :enemy && weapon[:durability].zero?
  game_over(tracked_enemy, player)
end

loop do
  play_game
  user_choice = gets.chomp.downcase
  break if user_choice != "y"
end
