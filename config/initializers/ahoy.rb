class Ahoy::Store < Ahoy::DatabaseStore
  Ahoy.visit_duration = 72.hours
end

# set to true for JavaScript tracking
Ahoy.api = false
