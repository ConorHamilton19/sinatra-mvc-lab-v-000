require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end 
  
  post '/results' do 
    @piglatinized = PigLatinizer.new(params[:user_input]).piglatinize
    erb :results
  end 
end