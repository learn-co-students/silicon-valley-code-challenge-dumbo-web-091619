class Startup
    attr_reader :name, :founder, :domain
    attr_accessor 
    @@all = []
    def initialize(name, founder, domain)
        @name = name 
        @founder= founder 
        @domain = domain
        @@all << self
    end
    
    def self.all
        @@all
    end

    def pivot(domain, name)
        @domain = domain
        @name = name
    end

    def self.find_by_founder(founder)
        Startup.all.find{|startup| startup.founder == founder}
    end

    def self.domains
        Startup.all.map{|startup| startup.domain} 
    end

    def sign_contract(capitalist, type, amount)
        FundingRound.new(self, capitalist, type, amount)
    end

    def num_funding_rounds
        FundingRound.all.select{|round| round.startup == self}.size
    end

    def funds
        FundingRound.all.select{|round| round.startup == self}
    end

    def total_funds
        self.funds.reduce(0){|sum, fund| sum + fund.investment}
    end

    def investors
        self.funds.map{|round| round.venture_capitalist}.uniq
    end

    def big_investors
        self.investors.select{|round| VentureCapitalist.tres_commas_club.include?(round)}
        #self.investors & VentureCapitalist.tres_cooma_club #-> it's same with the above!
        #lookup union, difference, intersection
    end

end
