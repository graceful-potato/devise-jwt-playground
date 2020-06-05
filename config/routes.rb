Rails.application.routes.draw do
  devise_for :couriers, defaults: { format: :json },
                        path: "/api/v1/",
                        controllers: {
                          sessions: 'api/v1/sessions'
                        }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"

  namespace "api", defaults: { format: :json } do
    namespace "v1" do
      resources :couriers, only: :index
    end
  end
end
