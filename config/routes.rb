require 'api_constraints'

Pintube::Application.routes.draw do
  root to: 'pages#index'

  namespace '/api', defaults: { format: :json }, path: '/' do

    scope module: :v1,
      constraints: ApiConstraints.new(version: 1, default: true) do
    end
  end
end
