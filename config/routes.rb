Rails.application.routes.draw do
  root 'topics#index'
  resource :topics do
    collection do
      post :get_categories
    end
  end
end
