require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    text = params[:user_phrase]
    @piglatin_sentence = PigLatinizer.new.piglatinize(text)
    erb :piglatin
  end


end
