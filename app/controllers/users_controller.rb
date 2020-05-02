class UsersController < ApplicationController
  # インスタンス変数（＠）はここ方viewに渡す
  
  # ホームページ（一覧表示）
  def index
    @users = User.all
  end
  
  # 新規作成のページ
  def new
    @user = User.new
  end
  
  # 新規登録のアクション
  def create
    User.create(user_params)
    # user_paramsはメソッド
  end
  
  # 削除
  def destroy
    user = User.find(params[:id])
    # paramsのidで検索
    user.delete
    # deleteメソッドの実行
  end
  
  
  private
  # 下のメソッドはuserコントローラーのみ使用するため、pravateの下に記述
  def user_params
    params.require(:user).permit(:name,:age)
    # userに紐づいたnameとageを登録し、二つ以外は受け付けない
    
  end
  
  
end
