require './config/environment'
require './app/models/tweet'

#classes are app factories, and they pump out
#new instances of our app whenever users want it

class ApplicationController < Sinatra::Base



  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    Tweet.new("shakira-shakira", "My hips dont lie, breh.")
    Tweet.new(" josuea_bravo", "coding is life nerdicty # computers_are_my_best_friend")
    @tweets = Tweet.all
    erb :index
  end

end
