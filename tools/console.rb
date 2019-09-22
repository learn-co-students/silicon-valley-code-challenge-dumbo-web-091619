require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# startups
facebook = Startup.new("Facebook", "Mark Zuckerberg", "facebook.com")
twitter = Startup.new("Twitter", "Jack Dorsey", "twitter.com")
google = Startup.new("Google", "Max", "google.com")

# Venture Capitalists
mark_cuban = Venture_capitalist.new("Mark Cuban", 500000000)
bill_gates = Venture_capitalist.new("Bill Gates", 2000000000)
alex_ohanian = Venture_capitalist.new("Alexis Ohanian", 150000000)
warren_buffet = Venture_capitalist.new("Warren Buffet", 5000000000)

#  Funding Rounds
seed_funding = FundingRound.new(bill_gates,facebook,"seed",3000)
alpha_funding = FundingRound.new(bill_gates,facebook,"alpha", 4000)

# Funding Round methods "Offer Contract" / "Sign Contract"
warren_buffet.offer_contract(google, "seed", 15000)
warren_buffet.offer_contract(google, "seed", 3000)
alex_ohanian.offer_contract(google, "pre-seed", 10000003)
warren_buffet.offer_contract(twitter, "seed", 200000)
mark_cuban.offer_contract(facebook, "third round", 5000000)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line