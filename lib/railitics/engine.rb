module Railitics
  class Engine < ::Rails::Engine
    isolate_namespace Railitics

    config.generators do |g|
      g.test_framework :rspec, :view_specs => false
  end
end
