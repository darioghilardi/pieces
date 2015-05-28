require "pieces/version"
require 'sinatra/base'
require 'sinatra/asset_pipeline'
require 'pry'

module Pieces
  class App < Sinatra::Application

    configure do
      set :bind, '0.0.0.0'
      set :assets_prefix, %w(app/assets /app/assets)
      set :engine_stylesheet, 'facelift/facelift'
      set :engine_javascript, 'facelift/facelift'
    end

    register Sinatra::AssetPipeline

    # A better handling of these lines is absolutely required
    settings.sprockets.append_path File.expand_path('/home/dario/www/facelift-3-for-pieces/app/assets/stylesheets/')
    settings.sprockets.append_path File.expand_path('/home/dario/www/facelift-3-for-pieces/app/assets/javascripts/')

    get '/' do
      erb :index, layout: :application_layout
    end
  end
end
