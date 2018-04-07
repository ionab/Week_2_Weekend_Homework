class Room

    attr_reader :name, :guests, :songs, :capacity

    def initialize(name, guests, songs, capacity)
      @name = name
      @guest = []
      @songs = []
      @capacity = capacity

    end

end
