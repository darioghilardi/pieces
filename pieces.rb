require 'sinatra/base'
require 'sinatra/asset_pipeline'

class Pieces < Sinatra::Application
  register Sinatra::AssetPipeline

  set :bind, '0.0.0.0'
  set :assets_prefix, %w(app/assets)

  configure do
    # Setup Sprockets
    sprockets.append_path File.join(root, 'app', 'assets', 'stylesheets')
    sprockets.append_path File.join(root, 'app', 'assets', 'javascripts')
    sprockets.append_path File.join(root, 'app', 'assets', 'images')
  end

  get '/' do
    erb :index, layout: :application_layout
  end

  run! if app_file == $0
end
