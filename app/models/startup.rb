class Startup
  attr_accessor :name, :founder 
  attr_reader :domain

  @@all = []

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    @@all << self
  end

  def pivot(domain, name)
    self.name = name
    @domain = domain
  end

  def self.all
    @@all
  end

  def self.domains
    self.all.map(&:domain)
  end

  def self.find_by_founder(founder)
    self.all.find do |startup|
      startup.founder = founder
    end
  end

  def rounds 
    rounds = FundingRound.all.select do |round|
      round.startup == self
    end
  end

  def sign_contract(captialist, type, amount)
    FundingRound.new(self, captialist, type, amount)
  end

  def num_funding_rounds
    self.rounds.count
  end

  def total_funds
    rounds.reduce(0) do |total, round|
      total + round.investment
    end
  end

  def investors
    rounds.map(&:venture_capitalist).uniq
  end

  def big_investors
    self.investors & VentureCapitalist.tres_comma_club
  end
  
end
