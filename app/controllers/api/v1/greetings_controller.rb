module Api
  module V1
    class GreetingsController < ApplicationController
      def show
        @greeting = Greeting.find(rand(1..5))
        render json: @greeting, status: :ok
      end
    end
  end
end
