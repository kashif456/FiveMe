class MembersController < ApplicationController
	before_action :authenticate_user!, only: [:new, :show, :edit]

  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
   end

  def edit
    @user = User.find(params[:id])
 end

  def update
     @user = User.find(params[:id])
      if @User.update_attributes(member_params)
        redirect_to action: :show, id: @User.id
      else
        redirect_to action: :update, id: @User.id
      end
  end

   private
    def member_params
      params.require(:member).permit(
          :first, :last, :about
        )
    end

    
end
