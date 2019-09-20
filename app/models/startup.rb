class Startup

    attr_reader :founder, :domain
    attr_accessor :name
    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def self.all
        @@all
    end

    def pivot(domain, name)
        self.domain = domain
        self.name - name
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

    def sign_contract(vc, type, investment)
        #FundingRound.new(self, vc, type, investment)
        vc.offer_contract(self, type, investment)
    end

    def arr_funding_rounds 
        arr_fr = FundingRound.all.select do |fr|
            fr.startup == self
        end
        arr_fr
    end

    def num_funding_rounds
        self.arr_funding_rounds.count
    end

    def total_funds
        total_fund = 0
        self.arr_funding_rounds.map do |fr|
            total_fund += fr.investment
        end
        total_fund
    end

    def investors
        self.arr_funding_rounds.map {|fr| fr.venture_capitalist}.uniq
    end

    def big_investors
        self.investors.select {|investor| VentureCapitalist.tres_commas_club.include?(investor)}.uniq 
    end

end
