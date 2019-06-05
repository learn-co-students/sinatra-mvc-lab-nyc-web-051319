require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @latinized_text = PigLatinizer.new
        @latinized_text = @latinized_text.piglatinize(params[:user_phrase])
        erb :result
    end
end
