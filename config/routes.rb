Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :cards
  resources :card_archetypes
  resources :decks
  resources :galeries
  resources :games
  resources :items

  root to: 'application#index'
end

# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#          new_user_session GET    /users/sign_in(.:format)                                                                 devise/sessions#new
#              user_session POST   /users/sign_in(.:format)                                                                 devise/sessions#create
#      destroy_user_session DELETE /users/sign_out(.:format)                                                                devise/sessions#destroy
#         new_user_password GET    /users/password/new(.:format)                                                            devise/passwords#new
#        edit_user_password GET    /users/password/edit(.:format)                                                           devise/passwords#edit
#             user_password PATCH  /users/password(.:format)                                                                devise/passwords#update
#                           PUT    /users/password(.:format)                                                                devise/passwords#update
#                           POST   /users/password(.:format)                                                                devise/passwords#create
#  cancel_user_registration GET    /users/cancel(.:format)                                                                  devise/registrations#cancel
#     new_user_registration GET    /users/sign_up(.:format)                                                                 devise/registrations#new
#    edit_user_registration GET    /users/edit(.:format)                                                                    devise/registrations#edit
#         user_registration PATCH  /users(.:format)                                                                         devise/registrations#update
#                           PUT    /users(.:format)                                                                         devise/registrations#update
#                           DELETE /users(.:format)                                                                         devise/registrations#destroy
#                           POST   /users(.:format)                                                                         devise/registrations#create
#                     users GET    /users(.:format)                                                                         users#index
#                           POST   /users(.:format)                                                                         users#create
#                  new_user GET    /users/new(.:format)                                                                     users#new
#                 edit_user GET    /users/:id/edit(.:format)                                                                users#edit
#                      user GET    /users/:id(.:format)                                                                     users#show
#                           PATCH  /users/:id(.:format)                                                                     users#update
#                           PUT    /users/:id(.:format)                                                                     users#update
#                           DELETE /users/:id(.:format)                                                                     users#destroy
#                     cards GET    /cards(.:format)                                                                         cards#index
#                           POST   /cards(.:format)                                                                         cards#create
#                  new_card GET    /cards/new(.:format)                                                                     cards#new
#                 edit_card GET    /cards/:id/edit(.:format)                                                                cards#edit
#                      card GET    /cards/:id(.:format)                                                                     cards#show
#                           PATCH  /cards/:id(.:format)                                                                     cards#update
#                           PUT    /cards/:id(.:format)                                                                     cards#update
#                           DELETE /cards/:id(.:format)                                                                     cards#destroy
#           card_archetypes GET    /card_archetypes(.:format)                                                               card_archetypes#index
#                           POST   /card_archetypes(.:format)                                                               card_archetypes#create
#        new_card_archetype GET    /card_archetypes/new(.:format)                                                           card_archetypes#new
#       edit_card_archetype GET    /card_archetypes/:id/edit(.:format)                                                      card_archetypes#edit
#            card_archetype GET    /card_archetypes/:id(.:format)                                                           card_archetypes#show
#                           PATCH  /card_archetypes/:id(.:format)                                                           card_archetypes#update
#                           PUT    /card_archetypes/:id(.:format)                                                           card_archetypes#update
#                           DELETE /card_archetypes/:id(.:format)                                                           card_archetypes#destroy
#                     decks GET    /decks(.:format)                                                                         decks#index
#                           POST   /decks(.:format)                                                                         decks#create
#                  new_deck GET    /decks/new(.:format)                                                                     decks#new
#                 edit_deck GET    /decks/:id/edit(.:format)                                                                decks#edit
#                      deck GET    /decks/:id(.:format)                                                                     decks#show
#                           PATCH  /decks/:id(.:format)                                                                     decks#update
#                           PUT    /decks/:id(.:format)                                                                     decks#update
#                           DELETE /decks/:id(.:format)                                                                     decks#destroy
#                  galeries GET    /galeries(.:format)                                                                      galeries#index
#                           POST   /galeries(.:format)                                                                      galeries#create
#                new_galery GET    /galeries/new(.:format)                                                                  galeries#new
#               edit_galery GET    /galeries/:id/edit(.:format)                                                             galeries#edit
#                    galery GET    /galeries/:id(.:format)                                                                  galeries#show
#                           PATCH  /galeries/:id(.:format)                                                                  galeries#update
#                           PUT    /galeries/:id(.:format)                                                                  galeries#update
#                           DELETE /galeries/:id(.:format)                                                                  galeries#destroy
#                     games GET    /games(.:format)                                                                         games#index
#                           POST   /games(.:format)                                                                         games#create
#                  new_game GET    /games/new(.:format)                                                                     games#new
#                 edit_game GET    /games/:id/edit(.:format)                                                                games#edit
#                      game GET    /games/:id(.:format)                                                                     games#show
#                           PATCH  /games/:id(.:format)                                                                     games#update
#                           PUT    /games/:id(.:format)                                                                     games#update
#                           DELETE /games/:id(.:format)                                                                     games#destroy
#                     items GET    /items(.:format)                                                                         items#index
#                           POST   /items(.:format)                                                                         items#create
#                  new_item GET    /items/new(.:format)                                                                     items#new
#                 edit_item GET    /items/:id/edit(.:format)                                                                items#edit
#                      item GET    /items/:id(.:format)                                                                     items#show
#                           PATCH  /items/:id(.:format)                                                                     items#update
#                           PUT    /items/:id(.:format)                                                                     items#update
#                           DELETE /items/:id(.:format)                                                                     items#destroy
#                      root GET    /                                                                                        application#index
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
