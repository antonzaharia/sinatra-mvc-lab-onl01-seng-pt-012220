require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @result = PigLatinizer.new.to_pig_latin(params[:input])

    erb :result
  end
end
