

class FundingRound

    @@all = []

    attr_reader :type, :startup, :venture_capitalist
    attr_accessor :investment #they could invest more

    def initialize(startup, venture_capitalist, type, amount)
     @startup = startup
     @venture_capitalist = venture_capitalist
     @type = type
     @investment = amount.to_f
     @@all.push(self)
    end 

    def self.all 
     @@all
    end 
end
