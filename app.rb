require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    @name
  end

  get '/square/:number' do
    @number = params[:number].to_i
    square = @number * @number
    square.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    array = []
    x = 0
    
    while x < @number
      array << @phrase
      x += 1
    end
    array
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @array = [params[:word1],params[:word2],params[:word3],params[:word4],params[:word5]]
    @array.join(' ') + "."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @opp = params[:operation]
    if @opp == "add"
      value =@num1 + @num2
    elsif @opp == "subtract"
      value = @num1 - @num2
    elsif @opp == "multiply"
      value = @num1 * @num2
    else @opp == "divide"
      value = @num1/@num2
    end

    value.to_s
  end




end
