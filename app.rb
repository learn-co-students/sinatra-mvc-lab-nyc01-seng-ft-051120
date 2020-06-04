require_relative 'config/environment'

class App < Sinatra::Base

    get "/" do
        erb :user_input
    end
    post "/" do
        @text=params[:text]
        erb :result
        

    end
end