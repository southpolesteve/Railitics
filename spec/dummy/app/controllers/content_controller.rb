require "pry"

class ContentController < ApplicationController
  before_filter :track_user

  def home
    binding.pry
  end

end
