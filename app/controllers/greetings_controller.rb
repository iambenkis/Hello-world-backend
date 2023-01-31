class GreetingsController < ApplicationController
  def show
    @greeting = Greeting.find(rand(1..5))
    render json: @greeting, status: :ok, location: @greeting
  end
end
