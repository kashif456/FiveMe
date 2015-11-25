class CohortionsController < ApplicationController
  def index
<<<<<<< HEAD
  end

  def show
  end

  def edit
  end

  def create
  end

  def update
  end

  def new
  end
=======
    @cohortion = Cohortion.all
  end

  def show
    @cohortion = Cohortion.find(params[:id])
    #@cohort_adjectives = @Cohortion.CohortAdjective.find(params[:id])
    @cohortadjects = @cohortion.CohortAdjective.all 
  end

  def new
    @cohortion = Cohortion.new
  end

  def create
    @cohortion = Cohortion.new(cohortion_params)
    if @cohortion.save
      redirect_to action: :show, id: @cohortion.id
    else
      redirect_to action: :new
    end
  end

  def edit
    @cohortion = Cohortion.find(params[:id])
  end


 
  def update
     @cohortion = Cohortion.find(params[:id])
      if @cohortion.update_attributes(cohortion_params)
        redirect_to action: :show, id: @cohortion.id
      else
        redirect_to action: :update, id: @cohortion.id
      end
  end

  private
    def cohortion_params
      params.require(:cohortion).permit(
          :first, :last, :about
        )
    end


>>>>>>> 789fe3a756d44b9ddcf451ebd7fe555de6983e27
end
