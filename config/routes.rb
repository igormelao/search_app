Rails.application.routes.draw do
  root to: "articles#index"
  mount Searchjoy::Engine, at: "admin/searchjoy"
end
