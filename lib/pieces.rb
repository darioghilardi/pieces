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

    get '/' do
      erb :index, layout: :application_layout
    end
  end
end
