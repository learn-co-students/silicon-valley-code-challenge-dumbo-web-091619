require_relative '../config/environment.rb'
def reload
  load 'config/environment.rb'
end

funsu=Startup.new("Fun Startup", "Rob", "Tech")
serup=Startup.new("Serious Startup", "Rob2", "Finance")

sena=VentureCapitalist.new("Sena", 10_000_000_000)
rob=VentureCapitalist.new("Sena", 10_000)

funsu.sign_contract(sena, "Round A", 2_000_000_000)
funsu.sign_contract(sena, "Round B", 2_000_000_000)
funsu.sign_contract(sena, "Round C", 2_000_000_000)
funsu.sign_contract(rob, "Round B", 2_000)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line