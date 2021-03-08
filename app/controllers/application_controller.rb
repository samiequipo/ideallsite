class ApplicationController < ActionController::Base
  # Call and get visit
  before_action :current_visit
  before_action :current_event
  helper_method :current_visit

  private 
    def current_visit
      @current_visit ||= Ahoy::Visit.last
    end
    
    def current_event
      Ahoy::Event.create visit: Ahoy::Visit.last if (Ahoy::Event.count == 0)
    end
end
