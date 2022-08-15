Rails.application.routes.draw do
  scope :api, defaults: {format: :json} do 
    resources :privates
    resources :publics
    resources :examples
  end
end
