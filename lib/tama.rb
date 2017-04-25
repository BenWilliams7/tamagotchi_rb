class Tama
  @@storedFood = 10
  @@level = 0
  define_method(:initialize)  do |name|
    @name = name
    @food = 10
    @sleep = 20
    @activity = 10
  end
  define_singleton_method(:hungerLevel) do
    @@storedFood
  end
  define_method(:name) do
    @name
  end
  define_method(:food) do
    @food
  end
  define_method(:sleep) do
    @sleep
  end
  define_method(:activity) do
    @activity
  end
  define_method(:is_alive) do
    @food > 0
  end
  define_method(:set_food_level) do
    @food = 0
  end
  define_singleton_method(:level) do
    @@level
  end
  define_method(:time_passes) do
    @@storedFood -= 1
    @@level += 1
  end
  define_method(:add_food) do
    @@storedFood += 3
  end
end
