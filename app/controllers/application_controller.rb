class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    new_skill_path # ログイン後に遷移するpathを設定
  end
end
