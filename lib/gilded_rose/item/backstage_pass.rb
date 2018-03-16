class GildedRose
  class Item
    class BackstagePass < GenericItem

      MATCHER = /backstage pass/i
      
      private
      
      def change_options
        {
          amount: quality_change,
          action: before_sell_date? ? Quality::SET : Quality::INCREMENT
        }
      end
      
      def quality_change
        case days_remaining
        when (- Float::INFINITY)..0
          0
        when 0..5
          3
        when 5..10
          2
        else
          1
        end
      end

    end
  end
end