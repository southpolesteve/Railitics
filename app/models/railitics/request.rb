require 'mongoid'

module Railitics
  class Request
    include Mongoid::Document
    field :uuid, type: String
    field :user_id, type: Integer
    field :params, type: Hash
    field :method, type: String

    def controller
      params["controller"]
    end

    def action
      params["action"]
    end

  end
end
