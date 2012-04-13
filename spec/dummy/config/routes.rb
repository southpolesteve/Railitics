Rails.application.routes.draw do

  root :to => "content#home"

  mount Railitics::Engine => "/railitics"
end
