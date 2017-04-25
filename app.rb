require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/tama")

get("/") do
  # @foodtotal = Tama.food()
  erb(:index)
end

post("/timepass") do
  lilbud = Tama.new("Lil Yotti")
  lilbud.time_passes()
  @@foodScore = Tama.hungerLevel
  # redirect '/'
  erb(:index)
end

post("/feedme") do
  lilbud = Tama.new("Lil Yotti")
  lilbud.add_food()
  @@foodScore = Tama.hungerLevel
  # redirect '/'
  erb(:index)
end
