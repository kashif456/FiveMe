class CohortionsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, ]

  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
    #@cohort_adjectives = @user.CohortAdjective.find(params[:id])
    @cohortadjects = @user.CohortAdjective.all 
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to action: :show, id: @user.id
    else
      redirect_to action: :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end
 
  def update
     @user = User.find(params[:id])
      if @user.update_attributes(user_params)
        redirect_to action: :show, id: @user.id
      else
        redirect_to action: :update, id: @user.id
      end
  end

  private
    def user_params
      params.require(:user).permit(
          :first, :last, :about
        )
    end


end
