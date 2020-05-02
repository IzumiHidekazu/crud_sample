Rails.application.routes.draw do

    # ホームページ
  get "/users" , to:"users#index"
  
    # 新規登録ページ
  get "/users/new" , to:"users#new"
  
    # 新規登録のフォーム
  post "/users" , to: "users#create"
  
    # 削除
  delete "/users/:id" , to: "users#destroy"
    # ":id"は変数のようなもの（情報によって値が変わる）


end
