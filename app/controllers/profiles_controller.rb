class ProfilesController < ApplicationController
    
      before_action :set_user
    
      before_action :owned_profile, only: [:edit, :update]
      before_action :authenticate_user!, :except => [:index, :show]
     
      
  def show
        @user = User.find_by(user_name: params[:user_name])
        @posts = User.find_by(user_name: params[:user_name]).posts.order('created_at DESC')
  end
  
  def edit
       @user = User.find_by(user_name: params[:user_name])
  end
  
  def update
      @user = User.find_by(user_name: params[:user_name])
      if @user.update(profile_params)
          flash[:success] = 'Your profile has been updated.'
          redirect_to profile_path(@user.user_name)
          else
          @user.errors.full_messages
          flash[:error] = @user.errors.full_messages
          render :edit
      end
  end
  
  private
  
  def profile_params
      params.require(:user).permit(:avatar, :bio)
  end
  
  def owned_profile
      @user = User.find_by(user_name: params[:user_name])
      unless current_user == @user
          flash[:alert] = "That profile doesn't belong to you!"
          redirect_to root_path
      end
  end
  
  def set_user
      @user = User.find_by(user_name: params[:user_name])
  end
  
end
