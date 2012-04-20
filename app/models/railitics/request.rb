require 'mongoid'

module Railitics
  class Request
    include Mongoid::Document
    include Mongoid::Timestamps::Created

    field :uuid, type: String
    field :user_id, type: Integer
    field :params, type: Hash
    field :method, type: String
    field :referrer, type: String

    default_scope order_by([:created_at, :desc])

    def controller
      params["controller"]
    end

    def action
      params["action"]
    end

  end
end
