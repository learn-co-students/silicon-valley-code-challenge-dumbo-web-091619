# - `Startup#pivot`
#   - given a string of a **domain** and a string of a **name**, change the domain and name of the startup. This is the only public method through which the domain can be changed.

class Startup
    attr_reader :name,:founder,:domain
    @@all = []
    def initialize(name,founder,domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def self.all
        @@all
    end


    def self.find_by_founder(founders_name)
        Startup.all.find do |strtup|
            strtup.founder == founders_name
            return strtup
        end
    end

    def self.domains
        Startup.all.map {|strtup|strtup.domain}
    end

    # - `Startup#pivot`
#   - given a string of a **domain** and a string of a **name**, change the domain and name of the startup. This is the only public method through which the domain can be changed.

    def pivot(domain,name)
        @domain=domain
        @name=name
    end

    #dont quite understand why this works and can use somoe help/practice

end
