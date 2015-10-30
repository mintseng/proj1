Rails.application.routes.draw do
  # resources :pokemons
  # devise_for :trainers
  # resources :trainers
  # root to: 'home#index'

  # patch '/damage', to: 'pokemon#damage'
  # get 'pokemon_new', to: 'pokemon#new'
  # get 'pokemons/new', to: 'pokemons#new'
  
  # resources :trainers
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch 'new_pokemon', to: 'pokemons#new'
  get 'new_pokemon', to: 'pokemons#new'
  resources :pokemons

  
  patch 'capture', to: 'pokemons#capture'
  patch 'damage', to: 'pokemons#damage'
  get 'pokemons/new', to: 'pokemons#new'
  patch 'create', to: 'pokemons#create'
end
