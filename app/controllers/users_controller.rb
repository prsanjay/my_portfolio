class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        ContactMe.mail_from_user(@user).deliver_now
        format.html { redirect_to root_path, notice: 'User was successfully created.' }
        format.js
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :comment)
    end
end
