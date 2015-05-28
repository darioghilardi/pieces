require "pieces/version"
require 'sinatra/base'
require 'sinatra/asset_pipeline'

module Pieces
  class App < Sinatra::Application

    set :bind, '0.0.0.0'
    set :assets_prefix, %w(app/assets)
    set :engine_stylesheet, 'facelift/facelift'
    set :engine_javascript, 'facelift/facelift'

    register Sinatra::AssetPipeline

    get '/' do
      erb :index, layout: :application_layout
    end
  end
end
