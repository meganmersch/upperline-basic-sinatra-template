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
end
def volunteer_queens(volunteer_value)
  
  if volunteer_value <=11
    return "Cooking/Food"
  elsif volunteer_value <=14
    return "Helping People"
  elsif volunteer_value <=17
    return "Environment/Animals"
  elsif volunteer_value <=20
    return "Sports"
    
  end
end
volunteer_queens ==14
