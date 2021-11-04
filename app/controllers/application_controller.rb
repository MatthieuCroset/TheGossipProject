class ApplicationController < ActionController::Base
  def only_signed_in
    if !session[:email] || !session[params[:email]]
      redirect_to new_user_path, danger:"Vous n'êtes pas connecté"
    end
end
end
