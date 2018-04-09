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

#Here you want to only pass in 1 think, before you were passing in
#two objects - the sonng and guest. you should never be passing in the
#guest in the guest class. You have access to the favourite song so just use the
#@favourite_song and pass this in.
    def cheer_for_fav_song(song)
      if songs.include?(@favourite_song)
        return "Whoo"
      end
    end
end
