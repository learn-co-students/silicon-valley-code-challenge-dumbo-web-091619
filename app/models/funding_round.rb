class FundingRound
    attr_reader :startup, :venture_capitalist, :type, :investment
    attr_accessor
    @@all = []
    def initialize(startup, venture_capitalist, type, amount)
        @startup = startup
        @venture_capitalist = venture_capitalist
        @type = type
        if amount >= 0
            @investment = amount
            @@all << self
            return "Invested! Good Luck..."
        else
            return "Check your investment buddy..."
        end
    end

    def self.all
        @@all
    end


end
