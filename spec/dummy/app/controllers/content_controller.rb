require 'pry'

class ContentController < ApplicationController
  around_filter :track_user

  def index
  end

  def post
    redirect_to root_path
  end

  def put
    redirect_to root_path
  end

  def delete
    redirect_to root_path
  end

end
