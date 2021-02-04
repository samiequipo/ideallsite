class PagesController < ApplicationController
  def index
    @contact = Contact.new(operator: "MIWO")
  end
end
