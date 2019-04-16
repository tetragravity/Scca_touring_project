require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

buffy = Guest.new("Buffy")
justin = Guest.new("Justin")
buffy_house = Listing.new("Sunnydale")
tokyo_house = Listing.new("Tokyo")
willow_house = Listing.new("Sunnydale")
buffy_trip = Trip.new(tokyo_house, buffy)
justin_trip_one = Trip.new(buffy_house, justin)
justin_trip_two = Trip.new(willow_house, justin)
Trip.new(willow_house, buffy)

# puts "Guest knows their name?"
# puts buffy.name == "Buffy"

# # tokyo_house.trips == ?

# puts "Listing knows its city?"
# puts buffy_house.city == "Sunnydale"

# puts "Find all by city?"
# puts Listing.find_all_by_city("Sunnydale").include?(buffy_house)
# puts !Listing.find_all_by_city("Sunnydale").include?(tokyo_house)

# puts "Find all by name?"
# puts Guest.find_all_by_name("Buffy").include?(buffy)


# puts "Trip knows its guest and listing?"
# puts buffy_trip.guest == buffy 
# puts buffy_trip.listing == tokyo_house

# puts "Listing knows all its trips?"
# puts buffy_house.trips.include?(justin_trip_one)
# puts !buffy_house.trips.include?(justin_trip_two)

# puts "Listing can count its trips"
# puts willow_house.trip_count == 2

# puts "Can get most popular listing"
# puts Listing.most_popular == willow_house


Pry.start


