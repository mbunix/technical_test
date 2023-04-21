Rails.application.routes.draw do
  # Define your application routes 
jsonapi_resources :messages
jsonapi_resources :users
post 'transactions/send', to: 'transactions#send_transaction'

end

