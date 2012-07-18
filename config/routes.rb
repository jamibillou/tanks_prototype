TanksPrototype::Application.routes.draw do
  
  match 'pages/render_rack', :to => 'pages#render_rack'

  root :to => 'pages#index'
end
