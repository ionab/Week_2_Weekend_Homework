class Room

    attr_accessor :name, :guests, :songs, :capacity

    def initialize(name, guests, songs, capacity)
      @name = name
      @guests = []
      @songs = songs
      @capacity = capacity
    end

    def check_in_guest(guest, capacity)
      if capacity >= @guests.count
        @guests << guest
        return @guests.count
      else
        return "Sorry that room is full!"
      end
    end

    def check_out_guest()
      return @guests.clear
    end

    def add_song(new_song)
      return @songs.push(new_song)
    end
end
