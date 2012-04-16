class ContentController < ApplicationController
  around_filter :track_user

  def home
  end

  def post
    redirect_to root_path
  end

  def delete
    redirect_to root_path
  end

end
