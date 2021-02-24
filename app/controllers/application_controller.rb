class ApplicationController < ActionController::Base
  # Call and get visit
  before_action :current_visit
  helper_method :current_visit

  private 
    def current_visit
      @current_visit ||= Ahoy::Visit.last
    end
end
