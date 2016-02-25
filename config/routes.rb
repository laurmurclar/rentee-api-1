Rails.application.routes.draw do
  get 'signup' => 'tenant#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
