class GildedRose
  class Quality
    include Comparable

    INCREMENT = :+
    DECREMENT = :-
    SET = :set
    
    ACTIONS = [INCREMENT, DECREMENT, SET]

    MAX_QUALITY = 50
    MIN_QUALITY = 0

    attr_reader :value

    def initialize value
      @value = value
    end

    def change amount:, action:
      case action
      when :set then @value = amount
      when :+ then increment amount
      when :- then decrement amount
      end
    end

    def increment amount
      amount.times do
        @value += 1 if @value < MAX_QUALITY
      end
    end

    def decrement amount
      amount.times do
        @value -= 1 if @value > MIN_QUALITY
      end
    end

    def <=> other_val
      @value <=> other_val
    end

  end
end