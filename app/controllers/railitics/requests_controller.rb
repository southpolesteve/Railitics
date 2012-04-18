module Railitics
  class RequestsController < ApplicationController
    layout "railitics/application"

    def index
      query = Railitics::Request.scoped
      query = query.where(user_id: params[:user_id]) if params[:user_id]
      query = query.where(uuid: params[:uuid]) if params[:uuid]
      @requests = query.all
    end
    
  end
end
