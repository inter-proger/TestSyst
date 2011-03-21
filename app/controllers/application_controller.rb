class ApplicationController < ActionController::Base
  protect_from_forgery
	include AuthenticatedSystem

     def admin_required
       unless current_user && current_user.is_admin?
         flash[:error] = "Недостаточно прав доступа."
         redirect_to root_url and return false
       end
     end

end
