# Plugin's routes
resources :contacts do
  get 'search', on: :collection
end
