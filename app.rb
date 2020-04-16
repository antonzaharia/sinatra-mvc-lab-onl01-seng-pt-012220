require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    @result = PigLatinizer.new.piglatinize(params[:input])

    erb :result
  end
end
