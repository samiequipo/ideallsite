class ExampleController < ApplicationController
  def index
  end

  def meo
    render partial: 'example/meo'
  end

  def nos
    render partial: 'example/nos'
  end
end
