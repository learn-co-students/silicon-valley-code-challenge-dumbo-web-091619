class FundingRound
  attr_accessor :type
  attr_reader :startup, :venture_capitalist, :investment

  @@all = []

  def initialize(startup, venture_capitalist, type, investment)
    @startup = startup
    @venture_capitalist = venture_capitalist
    @type = type
    if investment >= 0
      @investment = investment 
      @@all << self
      puts "Yay! created"
    else
      puts "Bad investment : -("
    end
  end
  
  def self.all
    @@all
  end

end
