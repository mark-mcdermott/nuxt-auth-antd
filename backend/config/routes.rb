Rails.application.routes.draw do
  resources :privates
  resources :publics
  scope :api, defaults: {format: :json} do 
    resources :examples
  end
end
