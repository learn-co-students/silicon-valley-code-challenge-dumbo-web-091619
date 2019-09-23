# - `Startup#name`
#   - returns a **string** that is the startup's name
# - `Startup#founder`
#   - returns a **string** that is the founder's name
#   - Once a startup is created, the founder cannot be changed.
# - `Startup#domain`
#   - returns a **string** that is the startup's domain
#   - Once a startup is created, the domain cannot be changed (ie. A developer working with instances of the Startup class cannot directly change the domain)
# - `Startup#pivot`
#   - given a string of a **domain** and a string of a **name**, change the domain and name of the startup. This is the only public method through which the domain can be changed.
# - `Startup.all`
#   - should return **all** of the startup instances
# - `Startup.find_by_founder`
#   - given a string of a **founder's name**, returns the **first startup** whose founder's name matches
# - `Startup.domains`
#   - should return an **array** of all of the different startup domains


class Startup
    
    attr_reader :name, :founder, :domain

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

    def self.find_by_founder(founder_name)
        all.find do |startup|
            startup.founder == founder_name
        end
    end

    def self.domains
        all.map do |startup|
            startup.domain
        end
    end

    def pivot(new_name, new_domain)
        @name = new_name
        @domain = new_domain
    end

end
