class GamesController < ApplicationController
  def new
    def generate_code(number)
      charset = Array('A'..'Z')
      Array.new(number) { charset.sample }.join
    end
    @letters = generate_code(10)
  end

  def score
    @word = params[:word]
  end
end
