class HomeController < ApplicationController
  def index
    if current_user
      redirect_to after_sign_in_path_for(current_user)
    else
      redirect_to unauthenticated_root_path
    end
  end
end
