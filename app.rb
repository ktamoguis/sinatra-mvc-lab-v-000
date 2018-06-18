require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'


class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    #@latinized_text = PigLatinizer.new(params[:user_phrase])
    @latinized_text = Piglatinizer.new
    erb :results
  end

end
