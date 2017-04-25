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
end
