class DisplasiaController < ApplicationController

  # GET /displasia
  # GET /displasia.json
  def index
    @displasia = Displasium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @displasia }
    end
  end

  # GET /displasia/1
  # GET /displasia/1.json
  def show
    @displasium = Displasium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @displasium }
    end
  end

  # GET /displasia/new
  # GET /displasia/new.json
  def new
    @displasium = Displasium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @displasium }
    end
  end

  # GET /displasia/1/edit
  def edit
    @displasium = Displasium.find(params[:id])
  end

  # POST /displasia
  # POST /displasia.json
  def create
    @displasium = Displasium.new(params[:displasium])

    respond_to do |format|
      if @displasium.save
        format.html { redirect_to @displasium, notice: 'Displasium was successfully created.' }
        format.json { render json: @displasium, status: :created, location: @displasium }
      else
        format.html { render action: "new" }
        format.json { render json: @displasium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /displasia/1
  # PUT /displasia/1.json
  def update
    @displasium = Displasium.find(params[:id])

    respond_to do |format|
      if @displasium.update_attributes(params[:displasium])
        format.html { redirect_to @displasium, notice: 'Displasium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @displasium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /displasia/1
  # DELETE /displasia/1.json
  def destroy
    @displasium = Displasium.find(params[:id])
    @displasium.destroy

    respond_to do |format|
      format.html { redirect_to displasia_url }
      format.json { head :no_content }
    end
  end
end
