Rails.application.routes.draw do

  root to: "welcome#index"

  mount Pilgrim::Engine => "/pilgrim", :as => :pilgrim

end
