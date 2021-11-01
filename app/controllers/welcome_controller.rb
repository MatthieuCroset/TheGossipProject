class WelcomeController < ApplicationController
  def firstname
    @user = User.find(params[:id])
  end
end
