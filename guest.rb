class Guest

    attr_reader :name, :money

    def initialize(name, money)
      @name = name
      @money = money
    end

    def sufficient_funds(item)
      return @money >= item
    end

    def pay_fee(item)
      if sufficient_funds(item)
        @money -= item
      end
    end


end
