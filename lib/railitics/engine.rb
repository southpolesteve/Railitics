require "uuidtools"

module Railitics
  class Engine < ::Rails::Engine
    isolate_namespace Railitics

    initializer "testing" do |app|
      ActionController::Base.send :include, Railitics::InstanceMethods
    end

    config.generators do |g|
      g.test_framework :rspec, :view_specs => false
    end
  end
end


module Railitics
  module InstanceMethods
    def track_user
      unless session[:railitics]
        session[:railitics] = UUIDTools::UUID.timestamp_create
      end
    end
  end
end