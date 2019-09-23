require 'pry'

require_relative './app/models/funding_round.rb'
require_relative './app/models/startup.rb'
require_relative './app/models/venture_capitalist.rb'

pants = VentureCapitalist.new("Richy McRichpants", 70000000000)
cuban = VentureCapitalist.new("Mark Cuban", 2000000000)
john = VentureCapitalist.new("Daymond John", 300000000)
gates = VentureCapitalist.new("Bill Gates", 60000000000)

uber = Startup.new("Uber", "Travis Kalanick", "Ride Share")
lyft = Startup.new("Lyft", "Logan Green", "Ride Share")
yelp = Startup.new("Yelp", "Jeremy Stoppelman", "Social Media")
google = Startup.new("Google", "Larry Page", "Big Tech")



binding.pry 
0