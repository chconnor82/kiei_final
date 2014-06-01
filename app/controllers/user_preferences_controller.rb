class UserPreferencesController < ApplicationController
  def index
    @user_preferences = UserPreference.all
  end

  def show
    @user_preference = UserPreference.find(params[:id])
  end

  def new
    @user_preference = UserPreference.new
    @user_preference.caption = params[:caption]
  end

  def create
    @user_preference = UserPreference.new
    @user_preference.image_url = params[:image_url]
    @user_preference.caption = params[:caption]
    @user_preference.user_preference_boolean = params[:user_preference_boolean]

    if @user_preference.save
      redirect_to "/room_preferences/new", :notice => "User preference created successfully."
    else
      render 'new'
    end
  end

  def edit
    @user_preference = UserPreference.find(params[:id])
  end

  def update
    @user_preference = UserPreference.find(params[:id])

    @user_preference.image_url = params[:image_url]
    @user_preference.caption = params[:caption]
    @user_preference.user_preference_boolean = params[:user_preference_boolean]

    if @user_preference.save
      redirect_to "/user_preferences", :notice => "User preference updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user_preference = UserPreference.find(params[:id])

    @user_preference.destroy

    redirect_to "/user_preferences", :notice => "User preference deleted."
  end
end
