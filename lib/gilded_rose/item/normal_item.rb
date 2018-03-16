class GildedRose
  class Item
    class NormalItem < GenericItem

      MATCHER = "Normal Item".freeze

      private

      def change_options
        {
          amount: quality_change,
          action: Quality::DECREMENT
        }
      end

      def quality_change
        before_sell_date? ? 2 : 1
      end

    end
  end
end