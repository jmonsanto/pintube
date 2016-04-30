Pintube::Application.routes.draw do
  root to: 'pages#index'

  namespace '/api', defaults: { format: :json },
                    constraints: { subdomain: 'api' }, path: '/' do
  end
end
