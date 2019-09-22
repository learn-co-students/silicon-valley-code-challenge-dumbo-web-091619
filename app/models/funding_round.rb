require 'pry'
class FundingRound

    attr_reader :startup, :venture_capitalist
    attr_accessor :type, :investment
    @@all = []
    def initialize(venture_capitalist , startup, type, amount)
        @venture_capitalist = venture_capitalist
        @startup = startup
        @type = type
        @investment = amount
        @@all << self
    end

    def investments
        FundingRound.all.reduce(0) do |sum, funding| 
            sum + funding.investment
        end
    end

    def self.all
        @@all
    end

end
