class Room

    attr_accessor :name, :guests, :songs, :capacity

    def initialize(name, guests, songs, capacity, entry_fee)
      @name = name
      @guests = []
      @songs = songs
      @capacity = capacity
      @entry_fee = entry_fee
    end

    def check_in_guest(guests, capacity)
      for person in guests
        if capacity >= guests.count
        @guests << person
          return @guests.count
        else
          return "Sorry that room is full!"
        end
      end
    end

    def check_out_guest()
      return @guests.clear
    end

    def add_song(new_song)
      return @songs.push(new_song)
    end
end
