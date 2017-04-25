class Tama
  define_method(:initialize)  do |name|
    @name = name
    @food = 10
    @sleep = 10
    @activity = 10
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
end
