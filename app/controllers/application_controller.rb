require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    return erb :index
  end
   
  get '/quiz' do
    return erb :quiz
  end
  
  get '/biographies' do
    return erb :biographies
  end
  
  get '/coding' do
    return erb :coding
  end
   
  post '/results' do
    answers = params.values 
    @total = 0 
    answers.each do |answer|
      @total += answer.to_i 
    end
    puts @total 
    
    @combo = volunteer_generator(@total)
    if @combo == "cookingfood"
      erb :cookingfood
    elsif @combo == "environment"
      erb :environment
    elsif @combo == "helpingpeople"
      erb :helpingpeople
    elsif @combo == "sports"
      erb :sports 
    end
  end
end

