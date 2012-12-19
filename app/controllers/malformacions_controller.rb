class MalformacionsController < ApplicationController

  # GET /malformacions
  # GET /malformacions.json
  def index
    @malformacions = Malformacion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @malformacions }
    end
  end

  # GET /malformacions/1
  # GET /malformacions/1.json
  def show
    @malformacion = Malformacion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @malformacion }
    end
  end

  # GET /malformacions/new
  # GET /malformacions/new.json
  def new
    @malformacion = Malformacion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @malformacion }
    end
  end

  # GET /malformacions/1/edit
  def edit
    @malformacion = Malformacion.find(params[:id])
  end

  # POST /malformacions
  # POST /malformacions.json
  def create
    @malformacion = Malformacion.new(params[:malformacion])

    respond_to do |format|
      if @malformacion.save
        format.html { redirect_to @malformacion, notice: 'Malformacion was successfully created.' }
        format.json { render json: @malformacion, status: :created, location: @malformacion }
      else
        format.html { render action: "new" }
        format.json { render json: @malformacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /malformacions/1
  # PUT /malformacions/1.json
  def update
    @malformacion = Malformacion.find(params[:id])

    respond_to do |format|
      if @malformacion.update_attributes(params[:malformacion])
        format.html { redirect_to @malformacion, notice: 'Malformacion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @malformacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /malformacions/1
  # DELETE /malformacions/1.json
  def destroy
    @malformacion = Malformacion.find(params[:id])
    @malformacion.destroy

    respond_to do |format|
      format.html { redirect_to malformacions_url }
      format.json { head :no_content }
    end
  end
end
