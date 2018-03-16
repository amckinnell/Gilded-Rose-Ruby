require 'pry'
require_relative 'gilded_rose/item'

class GildedRose

  attr_accessor :item

  def initialize(name:, days_remaining:, quality:)
    @item = Item.new(name, days_remaining, quality)
  end

  def tick
    item.tick
  end

  def name
    item.name
  end

  def days_remaining
    item.days_remaining
  end

  def quality
    item.quality
  end

end