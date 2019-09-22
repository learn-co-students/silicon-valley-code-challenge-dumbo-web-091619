class Venture_capitalist
    
    @@all =[]
    attr_reader :name, :total_worth, :investment
    attr_accessor  :type
    def initialize(name, networth)
        @name = name
        @total_worth = networth
        @@all << self
    end

    def self.all
        @@all
    end

    def offer_contract(startup, type,amount)
        new_contract = FundingRound.new(self,startup,type, amount)
        # new_contract.investment = amount
        new_contract
    end


    def funding_rounds
        FundingRound.all.select {|round| round.venture_capitalist == self}
    end
    
    def self.tres_commas_club
        self.all.select {|vc| vc.networth > 1000000000}
        
    end

    def portfolio
        self.funding_rounds.map {|funding| funding.startup.name}
    end

    def biggest_investment
        self.funding_rounds.max_by {|investor| investor.investment}
    end

    def invested(domain_string)
     domain_check = self.funding_rounds.select {|funding| funding.startup.domain == domain_string}
     domain_check.reduce(0) {|sum, money| sum + money.investment}
    end

end
