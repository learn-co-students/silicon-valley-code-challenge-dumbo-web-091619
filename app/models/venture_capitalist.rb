class VentureCapitalist

    attr_reader :name, :total_worth
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
        self.all.select do |vc|
            vc.total_worth > 1000000000
        end
    end

    def offer_contract(startup, type, investment)
        FundingRound.new(startup, self, type, investment)
    end

    def funding_rounds
        FundingRound.all.select do |fr|
            fr.ventrue_capitalist == self
        end
    end

    def portfolio
        self.funding_rounds.map {|fr| fr.startup }.uniq
    end

    def biggest_investment
        biggest_fr = nil
        money = 0
        self.funding_rounds.each do |fr|
            if fr.investment > money
                money = fr.investment
                biggest_fr = fr
            end
        end
        biggest_fr
    end

    def invested(domain)
        total = 0
        domain_arr = self.funding_rounds.select do |fr|
            fr.domain == domain
        end
        domain_arr.each do |fr|
            total += fr.investment
        end
        total
    end

end
