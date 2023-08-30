# rubocop:disable all
#-----------------------------YOUR CODE BELOW---------------------------------->

def random_enemy
  enemies = [
    { name: "👺 Goblin", hp: rand(200..300), attack: (5..10).to_a, block: (1..5).to_a, crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) }  },
    { name: "👹 Ogre", hp: rand(400..600), attack: (15..25).to_a, block: (3..15).to_a, crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) }  },
    { name: "👹 Orc", hp: rand(300..400), attack: (8..12).to_a, block: (2..7).to_a, crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) }  },
    { name: "🤪 Village Idiot", hp: rand(150..250), attack: (5..10).to_a, block: (2..4).to_a, crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) }  },
    { name: "🧙‍♂️ Village Elder", hp: rand(250..450), attack: (10..15).to_a, block: (3..8).to_a, crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) }  },
    { name: "👑 Village King", hp: rand(350..550), attack: (20..30).to_a, block: (5..15).to_a, crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) }  },
    { name: "🧙‍♂️ Wizard", hp: rand(250..400), attack: (15..25).to_a, block: (2..10).to_a, crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) }  },
    { name: "🌿 Druid", hp: rand(150..250), attack: (10..20).to_a, block: (3..8).to_a, crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) }  },
    { name: "🐺 Werewolf", hp: rand(400..500), attack: (12..18).to_a, block: (3..8).to_a, crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) }  },
    { name: "🦖 Dinosaur", hp: rand(350..550), attack: (25..40).to_a, block: (6..18).to_a, crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) }  },
    { name: "🤖 Robot from the future", hp: rand(200..400), attack: (18..25).to_a, block: (5..15).to_a, crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) }  },
    { name: "🐉 Dragon", hp: rand(400..900), attack: (30..50).to_a, block: (5..20).to_a, crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) }  },
    { name: "👻 Ghost", hp: rand(400..600), attack: (15..25).to_a, block: (3..15).to_a, crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) }  },
  ]

  enemies.sample
end

def pick_weapon
  weapons = [
    { name: "🏏 Baseball Bat", damage: (20..30).to_a, durability: rand(2..5), crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) } },
    { name: "🥊 Punching Glove", damage: (10..30).to_a, durability: rand(2..3), crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) } },
    { name: "🪓 Axe", damage: (25..40).to_a, durability: rand(3..4), crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) } },
    { name: "🪒 Occam's Razor", damage: (15..35).to_a, durability: rand(1..3), crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) } },
    { name: "🗡 Dagger", damage: (10..45).to_a, durability: rand(1..4), crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) } },
    { name: "🗡️ Sword", damage: (15..50).to_a, durability: rand(2..4), crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) } },
    { name: "🎇 Mace", damage: (16..48).to_a, durability: rand(2..5), crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) } },
    { name: "🍢 Giant Club", damage: (20..35).to_a, durability: rand(3..6), crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) } },
    { name: "✨ Magic Scepter", damage: (1..60).to_a, durability: rand(1..4), crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) } },
    { name: "🏹 Long Bow", damage: (10..90).to_a, durability: rand(1..4), crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) } },
    { name: "🏹 Crossbow", damage: (20..80).to_a, durability: rand(1..3), crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) } },
  ]

  weapons.sample
end

def special_weapon
  special_weapons = [
    { name: "🔫 Gatling Laser", damage: (25..60).to_a, durability: rand(3..4), crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) } },
    { name: "🔥 Fireball", damage: (40..80).to_a, durability: 1, crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) } },
    { name: "💣 Bobomb", damage: (25..100).to_a, durability: 1, crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) } },
    { name: "🛫 Air Strike", damage: (30..120).to_a, durability: 1, crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) } },
    { name: "🦄 Unicorn", damage: (10..90).to_a, durability: rand(2..3), crit_ch: (1..10).to_a, crit_x: -> { rand(1.2..2.0) } },
  ]

  special_weapons.sample
end
