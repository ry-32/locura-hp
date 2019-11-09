Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'home#lp'
  get 'contact' => "home#contact"
  post 'contact_send' => 'home#contact_send'
end
