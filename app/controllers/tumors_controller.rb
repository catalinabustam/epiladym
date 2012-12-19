class TumorsController < ApplicationController

  # GET /tumors
  # GET /tumors.json
  def index
    @tumors = Tumor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tumors }
    end
  end

  # GET /tumors/1
  # GET /tumors/1.json
  def show
    @tumor = Tumor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tumor }
    end
  end

  # GET /tumors/new
  # GET /tumors/new.json
  def new
    @tumor = Tumor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tumor }
    end
  end

  # GET /tumors/1/edit
  def edit
    @tumor = Tumor.find(params[:id])
  end

  # POST /tumors
  # POST /tumors.json
  def create
    @tumor = Tumor.new(params[:tumor])

    respond_to do |format|
      if @tumor.save
        format.html { redirect_to @tumor, notice: 'Tumor was successfully created.' }
        format.json { render json: @tumor, status: :created, location: @tumor }
      else
        format.html { render action: "new" }
        format.json { render json: @tumor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tumors/1
  # PUT /tumors/1.json
  def update
    @tumor = Tumor.find(params[:id])

    respond_to do |format|
      if @tumor.update_attributes(params[:tumor])
        format.html { redirect_to @tumor, notice: 'Tumor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tumor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tumors/1
  # DELETE /tumors/1.json
  def destroy
    @tumor = Tumor.find(params[:id])
    @tumor.destroy

    respond_to do |format|
      format.html { redirect_to tumors_url }
      format.json { head :no_content }
    end
  end
end
