Rails.application.routes.draw do
  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  
  namespace :public do
    get "home/about" => "homes#about"
    resources :charas, only:[:index, :edit, :show, :create,  :destroy]
    resources :customers, only:[:index, :edit, :show]
  end
  
  scope module: :public do
    root to: "homes#top"
  end
  
  devise_for :admin, skip:[:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
  
  namespace :admin do
    
  end
  
end
