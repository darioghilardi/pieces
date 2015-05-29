require "pieces/version"
require 'sinatra/base'
require 'sinatra/asset_pipeline'
require 'rack-livereload'

module Pieces
  class App < Sinatra::Application
    use Rack::LiveReload

    configure do
      set :bind, '0.0.0.0'
      set :assets_prefix, %w(app/assets /app/assets)
      set :engine_stylesheet, 'facelift/facelift'
      set :engine_javascript, 'facelift/facelift'
    end

    register Sinatra::AssetPipeline

    settings.sprockets.append_path(Bundler.root + 'app/assets/stylesheets/')
    settings.sprockets.append_path(Bundler.root + 'app/assets/javascripts/')

    get '/' do
      erb :index, layout: :application_layout
    end
  end
end
