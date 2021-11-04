class SessionsController < ApplicationController

  def new 
    @user = User.new
  end

  def create
    # cherche s'il existe un utilisateur en base avec l’e-mail
    @user = User.find_by(email: params[:email])
  
    # on vérifie si l'utilisateur existe bien ET si on arrive à l'authentifier (méthode bcrypt) avec le mot de passe 
    if @user && @user.authenticate(params[:password])
      log_in(@user)
      redirect_to gossips_path, success: "welcome"
      # redirige où tu veux, avec un flash ou pas
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render new_session_path
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end

end