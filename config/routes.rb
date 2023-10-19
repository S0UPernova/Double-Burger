Rails.application.routes.draw do
  scope ENV["RAILS_RELATIVE_URL_ROOT"] do
    root 'home#home'
    get 'home', to: "home#home"
    get 'about', to: "home#about"
    get 'menu', to: "home#menu"
    get 'contact', to: "home#contact"
    get 'store_locator', to: "additional_pages#store_locator"
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
end