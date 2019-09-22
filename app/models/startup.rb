class Startup
    @@all = []
    attr_reader :founder, :domain
    attr_accessor :name
    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain        
        @@all << self
    end

    def self.all
        @@all
    end

    def sign_contract(venture_capitalist, type, amount)
        new_contract = FundingRound.new(venture_capitalist,self,type, amount) #venture_capitalist, startup and type are the params for my Funding Round class
        # new_contract.investment = amount
        new_contract
    end

    def pivot(domain, name)
        @domain = domain
        @name = name
    end

    def funding_rounds
       FundingRound.all.select {|funding| funding.startup == self} 
    end

    def num_funding_rounds
        self.funding_rounds.length
    end
    
    def self.find_by_founder(founder_name)
        self.all.find {|startup| startup.founder == founder_name}
    end

    def total_funds
        self.funding_rounds.map {|funding| funding.investment}.reduce(0) {|sum, money| sum + money}
    end

    def self.domain
        self.all.map {|startup| startup.domain}
    end

    def all_investors
        self.funding_rounds.map {|funding| funding.venture_capitalist}
    end

    def investors
        self.funding_rounds.map {|funding| funding.venture_capitalist}.uniq
    end

    def big_investors
        self.all_investors.select {|investors| investors.networth.tres_commas_club}
    end

end
