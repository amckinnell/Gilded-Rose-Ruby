require_relative 'item/quality'
require_relative 'item/generic_item'
require_relative 'item/aged_brie'
require_relative 'item/backstage_pass'
require_relative 'item/conjured_mana'
require_relative 'item/normal_item'
require_relative 'item/sulfuras'

class GildedRose
  class Item
    NoKlassError = Class.new(StandardError)
    
    class Type
      attr_reader :klass, :matcher
      def initialize klass, matcher=nil
        @klass = klass
        @matcher = matcher || (klass::MATCHER if defined?(klass::MATCHER))
      end
    end

    TYPES = [
      Type.new(NormalItem),
      Type.new(AgedBrie),
      Type.new(Sulfuras),
      Type.new(BackstagePass),
      Type.new(ConjuredMana)
    ]

    def self.new name, days_remaining, quality
      @item = super name, days_remaining, quality
      @item.klass.from_item name, days_remaining, quality
    end

    def initialize name, days_remaining, quality
      @name = name
      @days_remaining = days_remaining
      @quality = quality
    end

    def klass
      TYPES.each do |type|
        return type.klass if type_matches? type
      end
      raise NoKlassError, "#{@name} is not associated to a valid Class!"
    end

    private

    def type_matches? type
      case type.matcher
      when String then !!(@name == type.matcher)
      when Regexp then !!(@name =~ type.matcher)
      end
    end

  end
end