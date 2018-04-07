class Guest

    attr_reader :name, :money

    def initialize(name, money)
      @name = name
      @money = money
    end

    def sufficient_funds(item)
      return @money >= item
    end

end
