Rottenpotatoes::Application.routes.draw do
  resources :movies 
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
 
  #get 'search_directors', to: 'movies#search_directors', as: 'search_directors'
  
  get 'search_director/:title' => 'movies#search_directors', as: 'search_directors'
  
   #resources :movies do
    # root :to => redirect('/movies')
    #get "by_director" => 'movies#by_director'
  #end
  
end