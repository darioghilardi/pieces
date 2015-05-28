require 'sinatra/base'

class Pieces < Sinatra::Application
  set :bind, '0.0.0.0'

  get '/' do
    erb :index, layout: :application_layout
  end

  run! if app_file == $0
end
