class CohortionsController < ApplicationController
  def index
    @cohortion = Cohortion.all
  end

  def show
    @cohortion = Cohortion.find(params[:id])
  end

  def edit
  end

  def create
  end

  def update
  end

  def new
  end
end
