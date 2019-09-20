class VentureCapitalist
    attr_reader :name
    attr_accessor :total_worth
    @@all = []
    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end
    
    def self.all
        @@all
    end

    def self.tres_commas_club
        VentureCapitalist.all.select{|capitalist| capitalist.total_worth > 1_000_000_000}
    end

    def offer_contract(startup, type, amount)
        FundingRound.new(startup, self, type, amount)
    end

    def funding_rounds
        FundingRound.all.select{|round| round.venture_capitalist == self}
    end

    def portfolio
        self.funding_rounds.map{|round| round.startup}.uniq
    end

    def biggest_investment
    biggest=self.funding_rounds.map{|round| round.investment}.max
    self.funding_rounds.find{|round| round.investment == biggest}
    end

    def invested(domain)
        domains = self.funding_rounds.select{|round| round.startup.domain == domain}
        domains.reduce(0){|sum, round| sum + round.investment}
    end

end
