module FuelLogsHelper
  def display_log_error(field)
    if @fuel_log.errors[field].any?
        raw @fuel_log.errors[field].first
    end
  end
end
