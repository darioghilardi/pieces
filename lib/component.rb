require 'pry'

class Component
  def initialize(name:, components:)
    @name = name
    @components = components
  end

  def valid?
    return true if components.names.include? name

    false
  end

  private

  attr_reader :name, :components
end
