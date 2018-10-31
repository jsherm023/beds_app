Rails.application.routes.draw do
  namespace :api do
    get '/beds' => 'beds#index'
    post '/beds' => 'beds#create'
    get '/beds/:id' => 'beds#show'
    patch '/beds/:id' => 'beds#update'
    delete 'beds/:id' => 'beds#destroy'
  end
end
