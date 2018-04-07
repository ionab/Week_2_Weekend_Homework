class Room

    attr_accessor :name, :guests, :songs, :capacity

    def initialize(name, guests, songs, capacity)
      @name = name
      @guests = []
      @songs = []
      @capacity = capacity

    end

    def check_in_guest(guest)
      return @guests << guest
    end
    def count_guests_in_room
      return @songs.length
    end
  

end
