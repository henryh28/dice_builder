DiceBuild::Application.routes.draw do
  root to: "main#index"

  get "game/new", :to => "game#new"
  post "game/create", :to => "game#create"
  get "game/play", :to => "game#play"

end
