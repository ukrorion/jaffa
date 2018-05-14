class ApplicationController < ActionController::Base
  protect_from_forgery

  protected
    def after_sign_in_path_for(resource)
      case resource
      when ->(user) { user.sysadmin? || user.admin? }
        admin_root_path
      else
        employee_root_path
      end
    end

    helper_method def current_company
      current_user.company
    end
end
