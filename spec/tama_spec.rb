require('rspec')
require('tama')

describe(Tama) do
  describe('#initialize') do
    it ('sets the name and life levels of a new Tamagotchi') do
      my_pet = Tama.new("lil dragon")
      expect(my_pet.name()).to(eq("lil dragon"))
      expect(my_pet.food()).to(eq(10))
      expect(my_pet.sleep()).to(eq(10))
      expect(my_pet.activity()).to(eq(10))
    end
  end
  describe("#is_alive") do
    it("is alive if food level is above 0") do
      my_pet = Tama.new("lil dragon")
      expect(my_pet.is_alive()).to(eq(true))
    end
    it("is dead if the food level is 0") do
      my_pet.set_food_level() #make a method that will change the food level of your tamagotchi.
      my_pet = Tama.new("lil dragon")

      expect(my_pet.is_alive()).to(eq(false))
    end
  end
end
