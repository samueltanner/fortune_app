class Api::MyExamplesController < ApplicationController
  def fortune_generator
    fortunes = ["you will find money", "you won't find money", "you will make someone very happy"]
    @message = fortunes.sample
    render "fortunes.json.jb" # json: { message: "hello" }
  end

  def lotto_generator
    @number = []
    6.times do
      @number << rand(1..60)
    end
    @number
    render "lotto_generator.json.jb"
  end

  def bottles_generator
    bottle = 99
    @message = "#{bottle} bottles of beer on the wall, #{bottle} bottles of beer, take one down, pass it around #{bottle - 1} bottles of beer on the wall"

    render "99_bottles_generator.jb"
  end
end
