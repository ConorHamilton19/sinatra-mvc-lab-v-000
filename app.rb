require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end 
  
  post '/results' do 
    @piglatinized = PigLatinizer.new.piglatinize(params[:user_input])
    erb :results
  end 
end