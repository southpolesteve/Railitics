Rails.application.routes.draw do

  devise_for :users

  root :to => "content#home"
  post "/post" => "content#post"
  delete "/delete" => "content#delete"

  mount Railitics::Engine => "/railitics"
end
