require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  post '/' do 
    @result = PigLatinizer.new.to_pig_latin(params[:input])
    
    erb :result
  end
end