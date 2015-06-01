class Components
  def initialize(root:)
    @root = root
  end

  # Returns all the defined components names
  def names
    Dir.glob(root.join('app', 'components', '*')).map do |component|
      File.basename(component) if Dir.exists?(component)
    end
  end

  # Returns all the defined components paths
  def paths
    Dir.glob(root.join('app', 'components', '*')).map do |component|
      component
    end
  end

  private

  attr_reader :root
end
