module Railitics
  class RequestsController < ApplicationController
    def index
      @requests = Railitics::Request.all
    end
  end
end
