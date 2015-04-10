Rails.application.routes.draw do
  namespace :jazzy_to, path: nil, shallow_path: nil do
    resources :jazzies, only: [:update, :destroy] do
      member { get :approve }
    end
  end
end
