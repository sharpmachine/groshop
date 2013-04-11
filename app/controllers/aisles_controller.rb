class AislesController < ApplicationController

  before_filter :authenticate_user!  
  # GET /aisles
  # GET /aisles.json
  def index
    @aisles = Aisle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aisles }
    end
  end

  # GET /aisles/1
  # GET /aisles/1.json
  def show
    @aisle = Aisle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aisle }
    end
  end

  # GET /aisles/new
  # GET /aisles/new.json
  def new
    @aisle = Aisle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aisle }
    end
  end

  # GET /aisles/1/edit
  def edit
    @aisle = Aisle.find(params[:id])
  end

  # POST /aisles
  # POST /aisles.json
  def create
    @aisle = Aisle.new(params[:aisle])

    respond_to do |format|
      if @aisle.save
        format.html { redirect_to @aisle, notice: 'Aisle was successfully created.' }
        format.json { render json: @aisle, status: :created, location: @aisle }
      else
        format.html { render action: "new" }
        format.json { render json: @aisle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aisles/1
  # PUT /aisles/1.json
  def update
    @aisle = Aisle.find(params[:id])

    respond_to do |format|
      if @aisle.update_attributes(params[:aisle])
        format.html { redirect_to @aisle, notice: 'Aisle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aisle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aisles/1
  # DELETE /aisles/1.json
  def destroy
    @aisle = Aisle.find(params[:id])
    @aisle.destroy

    respond_to do |format|
      format.html { redirect_to aisles_url }
      format.json { head :no_content }
    end
  end
end
