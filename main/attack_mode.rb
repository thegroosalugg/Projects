# rubocop:disable all
#-----------------------------YOUR CODE BELOW---------------------------------->

# Player vs enemy strike

def shots_fired(hunter, target, shot)
  text = rand(3) == 1 ? (shot == :miss ? BACK_TALK.sample : "🗯️ " + SMACK_TALK.sample) : ""

  hit  = "#{hunter[:name]} #{text}#{HIT} #{target[:name]} -#{hunter[:damage]} #{target[:emoji]}"
  crit = "#{hunter[:name]} #{text}#{CRIT} #{target[:name]} -#{hunter[:damage]} #{target[:emoji]}"
  miss = "#{hunter[:name]} 🗯️❓ #{text}#{MISS} #{target[:name]}"

  shout, comeback = case shot
  when :hit  then [hit,  SMACK_BACK]
  when :crit then [crit, SMACK_BACK]
  when :miss then [miss,  TALK_BACK]
  end

  puts text_break(shout, " ", 100)
  puts text_break("#{target[:name]} 🗯️ #{comeback.sample}", " ", 85) if !text.empty? && rand(2) == 1
end

def strike(enemies, hunter, target)                        # dynamic damage multiplier
  source = hunter[:weapon] ? hunter[:weapon]         : hunter
  block  = target[:weapon] ? target[:weapon][:block] : target[:block]
  hunter[:damage] = ((source[:attack] - block) * rand(0.6..1.4)).ceil.clamp(1, 100)

  if source[:aim] > rand(0..9)
    if source[:chance] > rand(0..9)
      hunter[:damage] = (hunter[:damage] * source[:crit]).ceil.clamp(1, 100) # rounds any floating number up
      shots_fired(hunter, target, :crit)
    else
      shots_fired(hunter, target, :hit)
    end
    target[:hp] -= hunter[:damage]
  else
    shots_fired(hunter, target, :miss)
  end

  weapon_breaks(hunter) if hunter[:weapon]
  graveyard(enemies, (hunter[:id] == :player ? hunter : target)) # checks for enemy deaths and collects bounty

  if target[:id] == :player && target[:hp] <= 0
    target[:tracking] = hunter   # if player dies tracks enemy who dealt lethal blow
    invoice(target, :pwned) # sends same pwned message to the player
  end
end

# Sommersault attack

def somersault_attack(player, enemies) # winner strikes loser 2-3 times, targets random
  player[:flip] = rand(2)
  player[:roll] = rand(2..3)
  invoice(player, :bounce)
  player[:flip] == 1 ? player[:roll].times { strike(enemies, player, enemies.sample ) unless enemies.empty? } : player[:roll].times { strike(enemies, enemies.sample, player) }
end

# Main game combat

def mortal_kombat(enemies, player)
  greeting(:combat)

  loop do
    game_info(enemies, player)
    player[:land] = { id: :move, art: BATTLEFIELD.sample }
    puts MENU_HEADER
    enemies.each_with_index { |enemy, index| puts " " * 28 + "#{ML}#{NUM[index + 4]}#{CL} #{enemy[:name]}" }
    puts BARRIER

    choice = gets.chomp.to_i - 4

    if enemies.any? && (0...enemies.length).include?(choice)
      print `clear`
      target = enemies[choice]
      strike(enemies, player, target)
      strike(enemies, target, player) if target[:hp].positive? && player[:hp].positive?
      surprise(enemies, player, :combat) unless enemies.empty? || player[:hp] <= 0 # random attack on player possible
      break
    else
      invoice(player, :error)
    end
  end
end

# activates when exploring rooms

def surprise(enemies, player, event) # surprise attack
  target = enemies.sample
  invoice(player, :escape) if event == :escape # only when exploring rooms
  if rand(4) == 1
    invoice(target, :surprise)
    if rand(3) == 1
      invoice(player, :counter)
      strike(enemies, player, target)
    else
      strike(enemies, target, player)
    end
  end
end

def bounty(hunter, target)
  hunter[:tracking] = target
  hunter[:kills]   += 1
  hunter[:cash]     = (hunter[:cash] + 1).clamp(0, 5)
  hunter[:hp]       = (hunter[:hp] + 10).clamp(0, 150)
  invoice(hunter, :bounty) # amounts hardcoded as they're static
end

def graveyard(enemies, player)
  enemies.reject! do |enemy|
    if enemy[:hp] <= 0  # check for enemy deaths, update counter, track last enemy for game over
      invoice(enemy, :pwned)
      bounty(player, enemy)
      true  # This will remove the enemy from the array
    else
      false  # This will keep the enemy in the array
    end
  end # Player dies and last enemy is tracked if current tracked enemy is already dead
  player[:tracking] = enemies.sample if player[:hp] <= 0 && player[:tracking][:hp] <= 0
end
