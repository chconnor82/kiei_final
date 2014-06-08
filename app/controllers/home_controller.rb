class HomeController < ApplicationController
  # def new
  #   render 'new'
  # end
  def new

  end

  def destroy
    @user = User.find(params[:id])

    @user.destroy

    redirect_to "/home_610", :notice => "You have signed out! See you soon!"
  end

end
