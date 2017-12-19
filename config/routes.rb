Rails.application.routes.draw do
# appname/post/:id/comments
# appname/post/:id/comment
# appname/post/:id/comment/:id

resources :posts do
	resources :comments, only: [:create, :destroy]
end

devise_for :users, controllers: {
	sessions: 'users/sessions',
	registrations: 'users/registrations'
}

root 'posts#index'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
