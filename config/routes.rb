Rails.application.routes.draw do
  resources :bookmarks

  get "/:slug" => "visit#index", as: :visit # visit_path(:slug)
  get "/crawl/:url" => "crawl#index", as: :crawl, constraints: { url: /.*/ }

  root to: "bookmarks#index"
end
