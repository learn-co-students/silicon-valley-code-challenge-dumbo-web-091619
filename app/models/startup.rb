# `Startup#sign_contract`
  # given a **venture capitalist object**, type of investment (as a string), and the amount invested (as a float), creates a new funding round and associates it with that startup and venture capitalist.
# `Startup#num_funding_rounds`
  # Returns the total number of funding rounds that the startup has gotten
# `Startup#total_funds`
  # Returns the total sum of investments that the startup has gotten
# `Startup#investors`
  # Returns a **unique** array of all the venture capitalists that have invested in this company
# `Startup#big_investors`
  # Returns a **unique** array of all the venture capitalists that have invested in this company and are in the Trés Commas club

class Startup

 @@all = []

 attr_accessor :name #could theoretically change names/rebrand
 attr_reader :founder, :domain

 def initialize(name, founder, domain)
  @name = name 
  @founder = founder 
  @domain = domain
  @@all.push(self)
 end 

 def pivot(new_name, new_domain)
    @name = new_name
    @domain = new_domain
 end 

 def self.all 
  @@all
 end 
 
 def self.find_by_founder(founder_query)
  @@all.select { |startup_instance| startup_instance.founder == founder_query }
 end 

 def self.domains 
  @@all.map { |startup_instance| startup_instance.domain }.uniq
  #returns unique domains only
 end 

 def sign_contract(vc, type, amount)
  FundingRound.new(self, vc, type, amount)
 end 

 def num_funding_rounds
    # Returns the total number of funding rounds that the startup has gotten
    my_funding_rounds.length 
 end 

 def total_funds
    # Returns the total sum of investments that the startup has gotten
    my_funding_rounds.map { |fr_instance| fr_instance.investment }.reduce(:+).round(2)
 end 

 def investors
    # Returns a **unique** array of all the venture capitalists that have invested in this company
  my_funding_rounds.map { |fr_instance| fr_instance.venture_capitalist }.uniq
 end 

 def big_investors
    # Returns a **unique** array of all the venture capitalists that have invested in this company and are in the Trés Commas club
  self.investors & VentureCapitalist.tres_commas_club
 end 

 private 

 def my_funding_rounds
    FundingRound.all.select { |fr_instance| fr_instance.startup == self }
 end 

end
