Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # rootはlocalhost:3000にアクセスが来た際のルーティングを指す。
  # 今回はlocalhost:3000mのアクセスが来たらBoardsControllerクラスのindexメソッドを実行するように定義。
  # get 'boards', to: "boards#index"
  # get 'boards/new', to: "boards#new"
  # post 'boards', to: "boards#create"
  # get 'boards/:id', to: "boards#show"

  # resourcesbase routingを使うと全てのrouteを最初から作れる。
  resources :boards

end
