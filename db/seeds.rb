class Seed
  def self.run
    Dog.destroy_all()
    Toy.destroy_all()
    seed = Seed.new
    seed.gen_it()
  end
  def gen_it
    100.times do
      dog = FactoryBot.create(:dog)
      6.times do
        Toy.create!(
          melee: Faker::Games::DnD.melee_weapon,
          ranged: Faker::Games::DnD.ranged_weapon,
          dog_id: dog.id
        )
      end
    end
    puts "Congrats #{Dog.count} dogs has been made"
    puts "Congrats #{Toy.count} toys has been made"
  end
end

Seed.run