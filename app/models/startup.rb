class Startup
    attr_reader :name, :founder, :domain

    @@all = []

    def initialize(name, founder, domain)
        @name =  name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def pivot(new_name, new_domain)
        @name = new_name
        @domain = new_domain
    end

    def self.all
        @@all
    end

    def self.find_by_founder(founder_name)
        self.all.find do |startup|
            startup.founder == founder_name
        end
    end

    def self.domains
        self.all.map do |startup|
            startup.domain
        end
    end

    def sign_contract(capitalist,type_of_investment,amount)
        FundingRound.new(self, capitalist, type_of_investment, amount)
    end

    def num_funding_rounds
        FundingRound.all.select do |round|
            round.startup == self
        end
    end

    def total_funds
        total = 0
        num_funding_rounds.each do |round|
            total += round.investment
        end
        total
    end

    def investors
        investors = num_funding_rounds.map do |round|
            round.venture_capitalist
        end
        investors.uniq
    end

    def big_investors
        big_investors = investors.select do |investor|
            VentureCapitalist.tres_commas_club.include?(investor)
        end
        big_investors.uniq
    end

end
