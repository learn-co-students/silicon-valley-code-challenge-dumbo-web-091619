class FundingRound

  attr_reader :startup, :venture_capitalist, :type, :investment
  @@all = []

  def initialize(startup, vc, round_type, investment)
    @startup = startup
    @venture_capitalist = vc
    @type = round_type
    @investment = investment
    @@all << self
  end

  def self.all
    @@all
  end

end
