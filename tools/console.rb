require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

brian = VentureCapitalist.new("Brian", 2000000000)
rebecca = VentureCapitalist.new("Rebecca", 5000000)
jeremy = VentureCapitalist.new("Jeremy", 7000000000)

apple = Startup.new("Apple", "Steve Jobs", "tech")
microsoft = Startup.new("Microsoft", "Bill Gates", "tech")
linux = Startup.new("Linux", "Linus Torvalds", "tech")

FundingRound.new(apple, brian, "Angel", 10000000)
FundingRound.new(microsoft, rebecca, "Pre-Seed", 5000)
FundingRound.new(linux, jeremy, "Seed", 50000000)
FundingRound.new(apple, jeremy, "Pre-Seed", 10000000)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line