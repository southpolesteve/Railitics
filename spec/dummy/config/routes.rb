Rails.application.routes.draw do

  devise_for :users

  root :to => "content#home"

  mount Railitics::Engine => "/railitics"
end
