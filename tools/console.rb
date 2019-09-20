require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
first_startup = Startup.new("Startup 1", "Rob", "Tech")
second_startup = Startup.new("Startup 2", "Rob", "Health")

cap1 = VentureCapitalist.new("Jeff", 1000000005)
cap2 = VentureCapitalist.new("Emir", 5_000_000)

first_startup.sign_contract(cap2, "Round A", 10)
first_startup.sign_contract(cap2, "Round B", 1_000)

second_startup.sign_contract(cap1, "Round B", 1_000_000)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line