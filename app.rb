require 'sinatra'
require 'cheapshark'

class GemSharkApp < Sinatra::Base
  get '/' do
    @search = params['search']
    @game_results = if @search
        CheapShark.games(title: @search)
    else
        []
    end

    erb :home
  end
end
