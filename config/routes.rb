Rails.application.routes.draw do

  scope :api, defaults: { format: :json } do

    devise_for :users,
               controllers: {
                   sessions: 'users/sessions',
                   registrations: 'users/registrations'
               }
    get '/member-data', to: 'members#show'

     resources :accounts do
       resources :account_transactions
     end

   end

end
