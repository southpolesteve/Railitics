require "uuidtools"
require "pry"

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
      set_cookie
      if session[:railitics] || !current_user
        log_request uuid: session[:railitics]
      end
      if current_user && session[:railitics]
        log_request user_id: current_user.id
        if session[:railitics]
          update_all_session_requests
        end
      end
    end

    private

    def set_cookie
      unless session[:railitics] || current_user
        session[:railitics] = UUIDTools::UUID.timestamp_create
      end
    end

    def log_request(opts = {})
      opts.merge params: params, method: request.method
      Railitics::Request.create(opts)
    end

    def update_all_session_requests
      Railitics::Request.where(uuid: session[:railitics]).update_all(user_id: current_user.id)
      session[:railitics] = nil
    end

  end
end

