require 'mongoid'

module Railitics
  class Request
    include Mongoid::Document
    field :uuid, type: String
    field :user_id
  end
end
