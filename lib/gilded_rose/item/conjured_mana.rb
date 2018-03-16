class GildedRose
  class Item
    class ConjuredMana < GenericItem

      MATCHER = /conjured mana/i.freeze

      private

      def change_options
        {
          amount: quality_change,
          action: Quality::DECREMENT
        }
      end

      def quality_change
        before_sell_date? ? 4 : 2
      end

    end
  end
end