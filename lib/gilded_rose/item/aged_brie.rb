class GildedRose
  class Item
    class AgedBrie < GenericItem

      MATCHER = "Aged Brie".freeze

      private

      def change_options
        {
          amount: quality_change,
          action: Quality::INCREMENT
        }
      end

      def quality_change
        if quality >= 50
          0
        elsif days_remaining <= 0
          2
        else
          1
        end
      end

    end
  end
end