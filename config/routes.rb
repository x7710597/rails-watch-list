Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'movies/new'
  get 'movies/create'
  get 'lists/index'
  get 'lists/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root to: "lists#index"
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end
end


# As a user, I can see all my movie lists ✅
# As a user, I can create a movie list ✅
# As a user, I can see the details of a movie list ✅
# As a user, I can bookmark a movie inside a movie list
# As a user, I can destroy a bookmark




# Bookmark => lists/show.html.erb
