class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  #未ログインユーザーをログイン画面に促す
  before_action :configure_permitted_parameters, if: :devise_controller?


  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    #新規登録時（sign_up）に名前を入れる要素を追加
  end
end
