require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reverse = params[:name].reverse
    "#{@reverse}"
  end

  get "/square/:number" do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    @sentence = " "
    params[:number].to_i.times do
    @sentence += params[:phrase]
    end
    @sentence
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  # this one was mine:
  #get "/:operation/:number1/:number2" do
  #  @add = params[:number1].to_i + params[:number2].to_i
  #  @sub = params[:number1].to_i - params[:number2].to_i
  #  @mult = params[:number1].to_i * params[:number2].to_i
  #  @div = params[:number1].to_i / params[:number2].to_i
  #  @res = "#{@add} #{@sub} #{@mult} #{@div}"
  #  @res
  #  end

  # this is FI solution. The instruction were quite unclear
    get '/:operation/:number1/:number2' do
  operation = params[:operation]
  number1 = params[:number1].to_i
  number2 = params[:number2].to_i
  if operation == "add"
    answer = number1 + number2
  elsif operation == "subtract"
    answer = number1 - number2
  elsif operation == "multiply"
    answer = number1 * number2
  elsif operation == "divide"
    answer = number1 / number2
  else
    answer = "Unable to perform this operation"
  end
  answer.to_s
end

    

end
