# `VentureCapitalist#offer_contract`
  # given a **startup object**, type of investment (as a string), and the amount invested (as a float), creates a new funding round and associates it with that startup and venture capitalist.
# `VentureCapitalist#funding_rounds`
  # returns an array of all funding rounds for that venture capitalist
# `VentureCapitalist#portfolio`
  # Returns a **unique** list of all startups this venture capitalist has funded
# `VentureCapitalist#biggest_investment`
  # returns the largest funding round given by this venture capitalist
# `VentureCapitalist#invested`
  # given a **domain string**, returns the total amount invested in that domain

class VentureCapitalist

    @@all = []

    attr_reader :name 
    attr_accessor :total_worth

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all.push(self)
    end 

    def self.all 
        @@all 
    end 

    def self.tres_commas_club
     @@all.select { |vc_instance| vc_instance.total_worth >= 1000000000 }
    end 

end
