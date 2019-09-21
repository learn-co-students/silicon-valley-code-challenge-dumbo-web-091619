require_relative '../config/environment.rb'
require_relative '../app/models/funding_round.rb'
require_relative '../app/models/startup.rb'
require_relative '../app/models/venture_capitalist.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Startups

a = Startup.new("Google", "Sergey Brin", "Tech")
b = Startup.new("Microsoft", "Bill Gates", "Tech")
c = Startup.new("Facebook", "Mark Zuckerberg", "Social")

# VC's

d = VentureCapitalist.new("Bill", 100000000000 )
e = VentureCapitalist.new("Sergey", 16000000000 )
f = VentureCapitalist.new("Mark", 999999999 )


a.sign_contract(e, "angel", 1000000)
b.sign_contract(e, "seed", 10000000)
c.sign_contract(e, "first round", 10000)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
