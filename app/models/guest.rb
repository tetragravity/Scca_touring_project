class Guest

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all 
    end

    def self.find_all_by_name(name)
        guests = Guest.all.select {|guest| guest.name == name}

    end

    # def print_all_guests(name)
    #     guests = Guest.find_all_by_name(name)

    #     guests.each do |guest| {
    #         print guest
    #     }
    # end
    # def name
    #     @name
    # end

    # def change_name(new_name)
    #     @name = new_name
    # end

end

# tom = Guest.new("Tom")
# tom.change_name("Something else")

# tom.name= # does not exist

# Type in your new name:

# > Miranda

# user.name = "Miranda"