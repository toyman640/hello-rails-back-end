# frozen_string_literal: true

module Api
  module V1
    class GreetingsController < ApplicationController
      def index
        @random_greeting = Greeting.order('RANDOM()').first
        render json: { greeting: @random_greeting&.message }
      end
    end
  end
end
