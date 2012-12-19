class EsclerosisController < ApplicationController

  # GET /esclerosis
  # GET /esclerosis.json
  def index
    @esclerosis = Esclerosi.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @esclerosis }
    end
  end

  # GET /esclerosis/1
  # GET /esclerosis/1.json
  def show
    @esclerosi = Esclerosi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @esclerosi }
    end
  end

  # GET /esclerosis/new
  # GET /esclerosis/new.json
  def new
    @esclerosi = Esclerosi.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @esclerosi }
    end
  end

  # GET /esclerosis/1/edit
  def edit
    @esclerosi = Esclerosi.find(params[:id])
  end

  # POST /esclerosis
  # POST /esclerosis.json
  def create
    @esclerosi = Esclerosi.new(params[:esclerosi])

    respond_to do |format|
      if @esclerosi.save
        format.html { redirect_to @esclerosi, notice: 'Esclerosi was successfully created.' }
        format.json { render json: @esclerosi, status: :created, location: @esclerosi }
      else
        format.html { render action: "new" }
        format.json { render json: @esclerosi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /esclerosis/1
  # PUT /esclerosis/1.json
  def update
    @esclerosi = Esclerosi.find(params[:id])

    respond_to do |format|
      if @esclerosi.update_attributes(params[:esclerosi])
        format.html { redirect_to @esclerosi, notice: 'Esclerosi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @esclerosi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /esclerosis/1
  # DELETE /esclerosis/1.json
  def destroy
    @esclerosi = Esclerosi.find(params[:id])
    @esclerosi.destroy

    respond_to do |format|
      format.html { redirect_to esclerosis_url }
      format.json { head :no_content }
    end
  end
end
