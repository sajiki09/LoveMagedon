class ApplicationController < ActionController::Base
  # Devise のヘルパーメソッドを使用
  def after_sign_in_path_for(resource)
    "/profile" # サインインした後にリダイレクトさせたいパスを指定
  end
end
