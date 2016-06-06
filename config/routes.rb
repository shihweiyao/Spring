Rails.application.routes.draw do

  scope "(:locale)", locale: /en|zh-TW/ do
    resources :sign_reports
    resources :donations
    resources :projects
    resources :stories
    resources :links
    as :user do
        patch '/user/confirmation' => 'users/confirmations#update', :via => :patch, :as => :update_user_confirmation
    end
    devise_for :users, :controllers => { :registrations => "registrations", :confirmations => "users/confirmations" } # be careful of the order with resources users
    resources :users, only: [:index, :show, :destroy]
    
    post 'projects/checkLogin'
    post 'projects/delete_stage'
    post 'projects/ajax_update'
    
    get  'main/post_back'
    post 'main/result'
    post 'main/post_back'
    post 'main/donation'
    
    
    
    get  'donation', to: 'main#donation'
    
    get  'main/about'
    get  'main/news'
    get  'main/donation' 
    get  'main/downloadManual' 
    root 'main#about'
  end
<<<<<<< HEAD
=======
  devise_for :users, :controllers => { :registrations => "registrations", :confirmations => "users/confirmations" } # be careful of the order with resources users
  resources :users, only: [:index, :show, :destroy]
  
  post 'projects/checkLogin'
  post 'projects/delete_stage'
  post 'projects/ajax_update'
  
  get  'main/post_back'
  post 'main/result'
  post 'main/post_back'
  post 'main/donation'
  
  
  
  get  'donation', to: 'main#donation'
  
  get  'main/about'
  get  'main/boardMembers'
  get  'main/meetings' 
  get  'main/contactUs' 
  get  'main/otherLinks'        
  get  'main/news'
  get  'main/donation' 
  get  'main/downloadManual' 
  root 'main#about'
  
  end

  
>>>>>>> b12117a543b26b9930e8aa889ca561d1a456c560
end
