class Startup

  attr_accessor :name
  attr_reader :founder, :domain
  # - `Startup#name`
  #   - returns a **string** that is the startup's name
  # - `Startup#founder`
  #   - returns a **string** that is the founder's name
  #   - Once a startup is created, the founder cannot be changed.
  # - `Startup#domain`
  #   - returns a **string** that is the startup's domain
  #   - Once a startup is created, the domain cannot be changed (ie. A developer working with instances of the Startup class cannot directly change the domain)

  @@all = []

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    @@all << self
  end


  def self.all
  # - `Startup.all`
  # - should return **all** of the startup instances

    @@all
  end


  def pivot(new_domain, new_name)
  # - `Startup#pivot`
  #   - given a string of a **domain** and a string of a **name**, change the domain and name of the startup. This is the only public method through which the domain can be changed.

    self.name = new_name; self.domain = new_domain
  end


  def self.find_by_founder(founder_name)
  # - `Startup.find_by_founder`
  #   - given a string of a **founder's name**, returns the **first startup** whose founder's name matches

    Startup.all.find { |startup| startup.founder == founder_name }
  end


  def self.startup_domains
  # - `Startup.domains`
  #   - should return an **array** of all of the different startup domains

    Startup.all.map { |startup| startup.domain }.uniq
  end


  def sign_contract(vc, investment_type, amount)
    # - `Startup#sign_contract`
    #   - given a **venture capitalist object**, type of investment (as a string), and the amount invested (as a float), creates a new funding round and associates it with that startup and venture capitalist.

    FundingRound.new(self, vc, investment_type, amount)
  end


  def num_funding_rounds
    # - `Startup#num_funding_rounds`
    # - Returns the total number of funding rounds that the startup has gotten
    FundingRound.all.filter { |round| round.startup == self }.size
  end


  def total_funds
    # - `Startup#total_funds`
    #   - Returns the total sum of investments that the startup has gotten

    FundingRound.all.filter { |round| round.startup == self }.reduce(0) { |memo, round| memo + round.investment }
  end


  def investors
    # - `Startup#investors`
    #   - Returns a **unique** array of all the venture capitalists that have invested in this company

    FundingRound.all.filter { |round| round.startup == self }.map { |round| round.venture_capitalist }.uniq
  end


  def big_investors
  # - `Startup#big_investors`
  #   - Returns a **unique** array of all the venture capitalists that have invested in   this company and are in the Trés Commas club

    # FundingRound.all.filter { |round| round.startup == self }

    self.investors & VentureCapitalist.tres_commas_club
  end

end
