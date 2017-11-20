Rails.application.routes.draw do

  root to: 'questions_controller#home'

  get 'questions_controller/answer'

  get 'questions_controller/ask'

  get 'pages/coach'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
