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
    @num = params[:number].to_i
    @phr = params[:phrase]
    @sentence = @num.times do
      puts "#{@phr}"
    end
    "#{@sentence}"
  end
end
