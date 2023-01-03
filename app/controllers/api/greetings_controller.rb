class Api::GreetingsController < ApplicationController
  def index
    message = Greeting.where(id: rand(1..5))
    render json: { greetings: message }
  end
end
