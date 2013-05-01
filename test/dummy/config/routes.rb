Rails.application.routes.draw do

  get "welcome/index"

  mount Pilgrim::Engine => "/pilgrim"
end
