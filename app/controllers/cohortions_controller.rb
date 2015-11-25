class CohortionsController < ApplicationController
  def index
    @cohortion = Cohortion.all
  end

  def show
    @cohortion = Cohortion.find(params[:id])
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


end
