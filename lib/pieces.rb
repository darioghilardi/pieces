require "pieces/version"
require 'sinatra/base'
require 'sinatra/asset_pipeline'
require 'engine_assets'
require 'component'
require 'rack-livereload'
require 'rack-flash'

module Pieces
  class App < Sinatra::Application
    use Rack::LiveReload
    use Rack::Flash

    enable :sessions

    configure do
      set :bind, '0.0.0.0'
      set :assets_prefix, %w(app/assets /app/assets)
      set :engine_stylesheet, 'facelift/facelift'
      set :engine_javascript, 'facelift/facelift'
    end

    register Sinatra::AssetPipeline
    register Sinatra::EngineAssets

    register_engine_stylesheets_folder
    register_engine_javascripts_folder
    register_engine_components_folders

    get '/' do
      erb :index, layout: :application_layout
    end

    get '/:component_name' do
      component = Component.new(
        name: params['component_name'],
        components: components
      )

      unless component.valid?
        flash[:error] = "The requested component is not available."
        redirect '/'
      end

      erb :show, layout: :application_layout
    end
  end
end
