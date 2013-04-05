module StatBoard
  module Reports
    class DailyReport < Report
      def name
        "Today"
      end

      def scope(model)
        super.where(["created_at > ?", 1.day.ago])
      end
    end
  end
end
