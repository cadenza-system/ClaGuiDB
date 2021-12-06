Rails.application.routes.draw do
  get 'mrails/g'
  get 'mrails/controller'
  get 'mrails/movies'
  namespace 'api' do
    namespace 'v1' do
      resources :musician
      resources :movie
    end
  end
end