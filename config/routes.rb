TanksPrototype::Application.routes.draw do
  
  match 'pages/render_rack',  :to => 'pages#render_rack'
  match 'pages/render_clone', :to => 'pages#render_clone'

  root :to => 'pages#index'
end
