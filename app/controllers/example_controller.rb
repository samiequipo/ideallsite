class ExampleController < ApplicationController
  def index
  end
  
  def meo
    respond_to do |format|
      format.js { render partial: 'example/meo_m4' }
    end   
  end
 
  def nos
    respond_to do |format|
      format.js { render partial: 'example/nos_m4' }
    end   
  end
  
end