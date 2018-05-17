class GildedRose
  attr_reader :name, :days_remaining, :quality

  def initialize(name:, days_remaining:, quality:)
    @name = name
    @days_remaining = days_remaining
    @quality = quality
  end

  def tick
    if @name != "Sulfuras, Hand of Ragnaros"
      before_sell_by
      @days_remaining = @days_remaining - 1
    end
    if @days_remaining < 0
      after_sell_date
    end
  end

  private 
  
  def after_sell_date
    if @name != "Aged Brie"
      if @name != "Backstage passes to a TAFKAL80ETC concert"
        if @quality > 0
          if @name == "Conjured Mana Cake"
            @quality = @quality - 2
          elsif @name != "Sulfuras, Hand of Ragnaros"
            @quality = @quality - 1
          end
        end
      else
        @quality = @quality - @quality
      end
    else
      if @quality < 50
        @quality = @quality + 1
      end
    end
  end

  def quality_increases
    if @quality < 50
      @quality = @quality + 1
      if @name == "Backstage passes to a TAFKAL80ETC concert"
        if @days_remaining < 11
          if @quality < 50
            @quality = @quality + 1
          end
        end
        if @days_remaining < 6
          if @quality < 50
            @quality = @quality + 1
          end
        end
      end
    end
  end


  def before_sell_by
    if quality_decreases?
      if @quality > 0
        if @name == "Conjured Mana Cake"
          @quality = @quality - 2
        else
          @quality = @quality - 1
        end
      end
    else
      quality_increases(@name, @quality)
    end
  end

  def quality_decreases?
    @name != "Aged Brie" and @name != "Backstage passes to a TAFKAL80ETC concert"
  end
end
