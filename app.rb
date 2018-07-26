require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end 
  
  post '/results' do 
    @piglatinized = piglatinizer.new(params[:user_input]).piglatinize
    erb :results
  end 
end