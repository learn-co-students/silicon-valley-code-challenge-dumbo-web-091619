require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

algae_burger = Startup.new("Algae Burger", "Howard E. Butts", "www.algaeburger.com")
bro_zone = Startup.new("The Bro Zone: A Zone for Bros", "Chad Michaelson", "www.brozone.com")
ergo_zoom = Startup.new("Ergo-Zoom: Ergonomics for Everyone", "Bjorna Gustafsdottir", "www.ergozoom.com")

harold = VentureCapitalist.new("Harold Abelard Chadsworth III", 75000000000)
bruno = VentureCapitalist.new("Bruno Bauer", 85000000)
corinne = VentureCapitalist.new("Corinne Smith-Jones", 35000000000)
elaine = VentureCapitalist.new("Elaine Evans", 9000000000)

angel = FundingRound.new(algae_burger, bruno, "Angel", 5000.0)
pre_seed = FundingRound.new(bro_zone, harold, "Pre-Seed", 7000.0)
seed = FundingRound.new(algae_burger, corinne, "Seed", 85000.0)
series_a = FundingRound.new(ergo_zoom, elaine, "Series A", 100000)

Startup.all
Startup.find_by_founder("Chad Michaelson")
Startup.find_by_founder("Howard E. Butts")
Startup.find_by_founder("Bjorna Gustafsdottir")
Startup.domains

VentureCapitalist.all
VentureCapitalist.tres_commas_club

FundingRound.all

bro_zone.name
bro_zone.founder
bro_zone.domain
bro_zone.pivot("Pong World", "www.pongworld.com")
bro_zone.name
bro_zone.domain

algae_burger.name
algae_burger.founder
algae_burger.domain

ergo_zoom.name
ergo_zoom.founder
ergo_zoom.domain

harold.name
harold.total_worth

bruno.name
bruno.total_worth

corinne.name
corinne.total_worth

elaine.name
elaine.total_worth

angel.startup
angel.startup.name
angel.startup.founder
angel.startup.domain
angel.venture_capitalist
angel.venture_capitalist.name
angel.venture_capitalist.total_worth





binding.pry
0 #leave this here to ensure binding.pry isn't the last line