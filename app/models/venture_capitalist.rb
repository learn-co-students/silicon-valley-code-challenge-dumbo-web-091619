class VentureCapitalist
  attr_reader :name
  attr_accessor :total_worth

  @@all = []

  def initialize(name, worth)
    # - `VentureCapitalist#name`
    #   - returns a **string** that is the venture capitalist's name
    # - `VentureCapitalist#total_worth`
    #   - returns a **number** that is the total worth of this investor (e.g., think of it as how much money they have)

    @name = name
    @total_worth = worth
    @@all << self
  end


  def self.all
    # - `VentureCapitalist.all`
    #   - returns an array of all venture capitalists

    @@all
  end


  def self.tres_commas_club
    # - `VentureCapitalist.tres_commas_club`
    #   - returns an array of all venture capitalists in the Trés Commas club (they have more then 1,000,000,000 `total_worth`)

    VentureCapitalist.all.filter { |capitalist| capitalist.total_worth >= 1000000000 }
  end


  def offer_contract(startup, round_type, investment)
    # - `VentureCapitalist#offer_contract`
    #   - given a **startup object**, type of investment (as a string), and the amount invested (as a float), creates a new funding round and associates it with that startup and venture capitalist.

    FundingRound.new(startup, self, round_type, investment)
  end


  def funding_rounds
    # - `VentureCapitalist#funding_rounds`
    #   - returns an array of all funding rounds for that venture capitalist

    FundingRound.all.filter { |round| round.venture_capitalist == self }
  end


  def portfolio
    # - `VentureCapitalist#portfolio`
    #   - Returns a **unique** list of all startups this venture capitalist has funded

    FundingRound.all.filter { |round| round.venture_capitalist == self }.map { |round| round.startup }.uniq
  end

  def biggest_investment
  # - `VentureCapitalist#biggest_investment`
  #   - returns the largest funding round given by this venture capitalist

    FundingRound.all.filter { |round| round.venture_capitalist == self }.sort_by { |round| round.investment }.last
  end



  def invested(domain_string)
  # - `VentureCapitalist#invested`
  #   - given a **domain string**, returns the total amount invested in that domain

    FundingRound.all.filter { |round| round.venture_capitalist == self and round.startup.domain == domain_string }.reduce(0) { |memo, round| memo + round.investment }
  end
end
