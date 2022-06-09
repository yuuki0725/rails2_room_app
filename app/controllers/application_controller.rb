class ApplicationController < ActionController::Base
    before_action :set_q
  def set_q
    @q = Room.ransack(params[:q])
  end
  def search
    @results = @q.result
  end
  
  protect_from_forgery with: :exception

  # ログイン済ユーザーのみにアクセスを許可する
  before_action :authenticate_user!

  # deviseコントローラーにストロングパラメータを追加する 
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # サインアップ時にnameのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :icon, :introduction])
  
    # アカウント編集の時にnameとprofileのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :profile])
  end
end

