require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
    "#{params[:name].reverse}"
  end

  get "/square/:number" do
    square = params[:number].to_i * params[:number].to_i
    "#{square}"
  end

  get "/say/:number/:phrase" do
    string = ""
    phrase = params[:phrase]
    params[:number].to_i.times {|i| string += phrase}
    "#{string}"
  end

  get "/say/:word/:word2/:word3/:word4/:word5" do
    string = "#{params[:word]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    "#{string}"
  end

  get "/:operation/:number1/:number2" do
    if params[:operation] == 'add'
      string = params[:number1].to_i + params[:number2].to_i
      return string.to_s
    elsif params[:operation] == 'subtract'
      string = params[:number1].to_i - params[:number2].to_i
      return string.to_s
    elsif params[:operation] == 'multiply'
      string = params[:number1].to_i * params[:number2].to_i
      return string.to_s
    elsif params[:operation] == 'divide'
      string = params[:number1].to_i / params[:number2].to_i
      return string.to_s
    end
  end
end