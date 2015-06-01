require 'sinatra/base'
require 'components'

module Sinatra
  module EngineAssets

    # Register the stylesheet folder into the assets pipeline
    def register_engine_stylesheets_folder
      settings.sprockets.append_path(engine_root + 'app/assets/stylesheets')
    end

    # Register the javascripts folder into the assets pipeline
    def register_engine_javascripts_folder
      settings.sprockets.append_path(engine_root + 'app/assets/javascripts')
    end

    # Register every components folder into the assets pipeline
    def register_engine_components_folders
      components_paths.each do |component_path|
        settings.sprockets.append_path(component_path)
      end
    end

    def components_names
      components.names
    end

    def components_paths
      components.paths
    end

    def components
      Components.new(root: engine_root)
    end

    def engine_root
      Bundler.root
    end
  end

  helpers EngineAssets
end
