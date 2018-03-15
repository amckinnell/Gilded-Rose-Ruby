require 'pry'
require_relative 'gilded_rose/quality'

class GildedRose
  
  NORMAL_ITEM = "Normal Item".freeze
  AGED_BRIE = "Aged Brie".freeze
  BACKSTAGE_PASS = "Backstage passes to a TAFKAL80ETC concert".freeze
  SULFURAS = "Sulfuras, Hand of Ragnaros".freeze
  
  MAX_QUALITY = 50
  MIN_QUALITY = 0
  
  attr_accessor :name, :days_remaining, :quality

  def initialize(name:, days_remaining:, quality:)
    @name = name
    @days_remaining = days_remaining
    @quality = Quality.new(value: quality)
  end

  def tick
    case name
    when NORMAL_ITEM
      quality_change = if days_remaining <= 0
        2
      else
        1
      end
      quality.decrement quality_change
      days_remaining_change_amount = 1
    when AGED_BRIE
      quality_change = if quality >= 50
        0
      elsif days_remaining <= 0
        2
      else
        1
      end
      quality.increment quality_change
      days_remaining_change_amount = 1
    when BACKSTAGE_PASS
      quality_change = if days_remaining <= 0
        quality.change(amount: 0, action: :set)
        0
      elsif days_remaining <= 5
        3
      elsif days_remaining <= 10
        2
      else
        1
      end
      quality.increment quality_change
      days_remaining_change_amount = 1
    when SULFURAS
      days_remaining_change_amount = 0
    end
    self.days_remaining -= days_remaining_change_amount
  end

end