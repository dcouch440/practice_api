FactoryBot.define do
  factory(:dog) do
    name {Faker::Creature::Dog.name}
    breed {Faker::Creature::Dog.breed}
    size {Faker::Creature::Dog.size}
  end
  factory(:toy) do
    melee {Faker::Games::DnD.melee_weapon}
    ranged {Faker::Games::DnD.ranged_weapon}
  end
end