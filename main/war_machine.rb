# rubocop:disable all
#-----------------------------YOUR CODE BELOW---------------------------------->

def wake_up
  player = {
    id: :player,
    hp: 175,
    attack: 10,
    block: 2,
    accuracy: 5,
    crit_ch: 10,
    crit_x: 1.5,
    cash: 0,
    drunk: 0,
    kills: 0,
    rooms: 0,
    land: { id: :move, art: BATTLEFIELD.sample }
  }
end

def random_enemy
  enemy = {
    id: :enemy,
    name: "#{YL}#{ENEMIES.sample}#{CL}",
    hp: rand(50..80),
    attack: rand(8..15),
    block: rand(1..5),
    accuracy: rand(5..10),
    crit_ch: rand(9..10),
    crit_x: rand(1.5..2.5)
  }
end

# Method to pick a weapon
def pick_weapon
  regular = ["#{YL}#{WEAPONS.sample}", 2, 5, 1, 5, -5, -0.3]
  special = ["#{MG}#{SPECIAL.sample}", 3, 10, 4, 7, -7, 0.0]
  name, us, at, bk, ac, ch, x = rand(4) == 1 ? special : regular

  weapon = {
    name: "#{name}#{CL}",
    uses: rand(us..5),
    attack: rand(at..15),
    block: rand(bk..8),
    accuracy: rand(-3..ac),
    crit_ch: rand(ch..1),
    crit_x: rand(x..1.5)
  }
end

def equip_weapon(wielder)
  if wielder[:equipped]
    wielder[:uses] = 0
    weapon_breaks(wielder)
  end
  preset = [:attack, :block, :accuracy, :crit_ch, :crit_x]
  boost = [:weapon_attack, :weapon_block, :weapon_accuracy, :weapon_crit_ch, :weapon_crit_x]

  weapon = pick_weapon
  wielder[:equipped] = weapon[:name]
  wielder[:uses] = weapon[:uses]

  preset.each_with_index do |stat, i1|
    boost.each_with_index do |boost, i2|
      if i1 == i2
        wielder[boost] = weapon[stat]
        wielder[stat] += weapon[stat]
      end
    end
  end
  weapon_speaks(wielder, wielder[:equipped], (wielder[:id] == :player ? :got : :enemy))
end

def weapon_breaks(wielder)
  if wielder[:uses] == 0
    weapon_speaks(wielder, wielder[:equipped], :broke) if wielder[:id] == :player

    preset = [:attack, :block, :accuracy, :crit_ch, :crit_x]
    boost = [:weapon_attack, :weapon_block, :weapon_accuracy, :weapon_crit_ch, :weapon_crit_x]

    preset.each_with_index do |stat, i1|
      boost.each_with_index do |boost, i2|
        if i1 == i2
          wielder[stat] -= wielder[boost]
          wielder[boost] = 0
        end
      end
    end
    wielder[:equipped] = nil
  end
end

def room_vault
  chosen_rooms = []

  while chosen_rooms.length < 4
    room = {
      name: ROOMS.sample,
      chance: Array.new(rand(4..12)) { rand(1..3) } # creates an array with 4-12 integers, each with a value between 0-6
    }

    # Check if the generated room's name is unique within the chosen_rooms array
    unless chosen_rooms.any? { |chosen_room| chosen_room[:name] == room[:name] }
      chosen_rooms << room
    end
  end
                                          # ANSI color hard coded here or all rooms get same color
  chosen_rooms.map { |room| room[:name] = "\e[3#{rand(1..6)}m#{DESC.sample} #{room[:name]}#{CL}" } # Give the rooms a unique desc
  chosen_rooms
end
