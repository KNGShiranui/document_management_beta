Rails.application.routes.draw do
  resources :blogs do # doとendを忘れないこと！
    resources :versions, only: %i[index show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
