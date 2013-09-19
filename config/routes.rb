Kayessess::Engine.routes.draw do
  root :to => 'styleguides#show'

  resources :sections, only: [:index, :show] do
    resources :modules, only: [:show]
  end
end
