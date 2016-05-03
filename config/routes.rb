require 'api_constraints'

Pintube::Application.routes.draw do
  root to: 'pages#index'

  namespace :api, defaults: { format: :json } do

    scope module: :v1,
      constraints: ApiConstraints.new(version: 1, default: true) do

      resources :boards, only: [ :show, :create, :update ]
    end
  end
end
