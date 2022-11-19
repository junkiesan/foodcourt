class WorkshopsController < ApplicationController
  def index
    @workshops = Workshop.all
    render json: @workshops, status: :ok  
  end

  def create    
    @workshop = Workshop.create!(workshop_params)    
    render json: @workshop, status: :ok  
  end

  def workshop_params    
    params.require(:workshop).permit(:name) 
  end
end
