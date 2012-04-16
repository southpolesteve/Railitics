Rails.application.routes.draw do

  devise_for :users

  root :to => "content#index"
  post "/post" => "content#post"
  put "/put" => "content#put"
  delete "/delete" => "content#delete"

  mount Railitics::Engine => "/railitics"
end
