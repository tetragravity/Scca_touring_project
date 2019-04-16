class Klass

    attr_reader :city

    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_all_by_city(city)
        self.all.select do |listing|
            listing.city == city
        end
    end

    def trips
        # iterate over all Trips
        Trip.all.select do |trip|
            # select the ones where the city matches this instance's city
            trip.listing == self
        end
    end

    def self.guests
        # return all guests who have visited a listing

        self.trips.map do |trip|
            trip.guest
        end

    end

    def trip_count
      # returns the number of trips that have been taken to that listing
      self.trips.length
    end

    def self.most_popular
        # return the listing with the most trips

        # find the trip counts of all listings
        # find the highest trip count
        # highest = Listing.all.map {|listing| listing.trip_count}.max
        # # return the listing associated with highest trip count
        # Listing.all.find {|listing| listing.trip_count == highest}

        Listing.all.max_by {|listing| listing.trip_count }
    end


end
