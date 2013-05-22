SurveyRails::Application.routes.draw do
  resources :surveys do
    resources :questions do 
      resources :options 
    end
  end

  resources :responses

  root to: 'surveys#index'
end
