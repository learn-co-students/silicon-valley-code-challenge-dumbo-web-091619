require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

google = Startup.new("Google", "Bob Ross", "Internet")
micro = Startup.new("Microsoft", "Bill Gates", "Computers")
tinder = Startup.new("Tinder", "Steve Jobs", "Love")
ikea = Startup.new("Ikea", "John Smith", "Meatballs")

hubbs = VentureCapitalist.new("Hubbs LLC", 3100300500)
greco = VentureCapitalist.new("Greco Inc", 100300500)
lavett = VentureCapitalist.new("Lavett and Bros", 4100300500)

googlefund1 = google.sign_contract(hubbs, "Type A", 500000)
microfund1 = micro.sign_contract(hubbs, "Type B", 400000)
tinderfund1 = tinder.sign_contract(greco, "Type A", 23)
tinderfund2 = tinder.sign_contract(hubbs, "Type B", 40000)
microfund2 = micro.sign_contract(lavett, "Type A", 222000)
ikeafund1 = ikea.sign_contract(lavett, "Type C", 60000)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line