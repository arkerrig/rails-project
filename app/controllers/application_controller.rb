class ApplicationController < ActionController::Base

def require_login
  unless logged_in?
    flash[:error] = "You must be logged in to access"
    redirect_to articles_path
  end
end

end
