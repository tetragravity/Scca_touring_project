class Trip

    attr_reader :guest, :listing

    @@all = []

    def initialize(listing, guest)
        @listing, @guest = listing, guest
        @@all << self
    end

    # def self.all # Trip.all
    #     @@all 
    # end

    def all # vegas.all

    end
end