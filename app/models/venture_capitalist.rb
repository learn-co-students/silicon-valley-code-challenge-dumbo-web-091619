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

    def self.tres_commas_club
        self.all.select do |capitalist|
            capitalist.total_worth > 1000000000
        end
    end

    def offer_contract(startup_name, type_of_investment, amount)
        FundingRound.new(startup_name, self, type_of_investment, amount)
    end

    def funding_rounds
        FundingRound.all.select do |round|
            round.venture_capitalist == self
        end
    end

    def portfolio
        funding_rounds.map do |round|
            round.startup
        end
    end

    def biggest_investment
        highest_amount = 0
        biggest_investment = nil
        funding_rounds.each do |round|
            if round.investment > highest_amount
                highest_amount = round.investment
                biggest_investment = round
            end
        end
        biggest_investment
    end

    def invested(domain_name)
        portfolio.select do |startup_name|
            startup_name.domain == domain_name
        end
    end

end
