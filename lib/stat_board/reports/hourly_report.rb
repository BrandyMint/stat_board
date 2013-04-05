module StatBoard
  module Reports
    class HourlyReport < Report
      def name
        "Hourly"
      end

      def scope(model)
        super.where(["created_at > ?", 1.hour.ago])
      end
    end
  end
end
