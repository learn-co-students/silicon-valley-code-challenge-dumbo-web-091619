class VentureCapitalist
  attr_accessor :name, :total_worth

  @@all = []

  def initialize(name, total_worth)
    @name = name
    @total_worth = total_worth
    @@all << self
  end

  def self.all
    @@all
  end

  def self.tres_comma_club
    self.all.select do |capitalist|
      capitalist.total_worth > 1_000_000_000 
    end
  end

  def offer_contract(startup, type, amount)
    FundingRound(startup, self, type, amount)
  end

  def funding_rounds
    FundingRound.all.select do |round|
      round.venture_capitalist == self 
    end 
  end
  
  def portfolio
    self.funding_rounds.map(&:startup).uniq
  end

  def biggest_investment
    self.funding_rounds.max do |fund_a, fund_b|
      fund_a.investment <=> fund_b.investment
    end
  end

  def invested(domain)
    funding_rounds_in_domain = self.funding_rounds.select do |round|
      round.startup.domain == domain
    end

    funding_rounds_in_domain.reduce(0) do |total, round|
      total + round.investment
    end
  end

end
