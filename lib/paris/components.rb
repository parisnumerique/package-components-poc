require "paris/components/version"

module Paris
  module Components
    module_function
    def root
      Pathname.new(File.expand_path('../../..', __FILE__))
    end
  end
end

require 'paris/components/railtie' if defined?(Rails)
