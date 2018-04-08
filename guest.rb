class Guest

    attr_reader :name, :money, :favourite_song

    def initialize(name, money, favourite_song)
      @name = name
      @money = money
      @favourite_song = favourite_song
    end

    def sufficient_funds(item)
      return @money >= item
    end

    def pay_fee(item)
      if sufficient_funds(item)
        @money -= item
      end
    end

    def cheer_for_fav_song(songs, guest)
      fav_song = guest.favourite_song
        if songs.include?(favourite_song)
          return "Whoo"
        end
    end

end
