# To use this class, build another class that inherits from it and define a
# #change_options method that returns a hash with an amount (an int) and an
# action. Allowed actions can be found in the Quality::ACTIONS constant.

class GildedRose
  class Item
    class GenericItem
      attr_reader :name, :days_remaining, :quality

      def self.matcher
        return MATCHER if defined? (MATCHER)
        raise NotImplementedError, "please set a MATCHER constant in #{self}"
      end

      def self.from_item name, days_remaining, quality
        new name, days_remaining, quality
      end

      def initialize name, days_remaining, quality
        @name = name
        @days_remaining = days_remaining
        @quality = Quality.new quality
      end

      def tick
        quality.change(change_options)
        @days_remaining -= 1
      end
      
      def before_sell_date?
        days_remaining <= 0
      end

    end
  end
end