class Ahoy::Store < Ahoy::DatabaseStore
  # set to true for JavaScript tracking
  Ahoy.api = false
  
  Ahoy.visit_duration = 24.hours
  Ahoy.server_side_visits = :when_needed
end

