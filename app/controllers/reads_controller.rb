class ReadsController < ApplicationController
  def index
    @patients=Patient.all
    
  end
end