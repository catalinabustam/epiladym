class PrintsController < ApplicationController
  def index
    @patients=Patient.all
    @report = Report.where(user_id: current_user.id)
    
  end
  
  def show
    @patients=Patient.find(:id)
    @reports = Report.where(user_id: current_user.id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reports }
    end
    
  end
  
  
  
  
end