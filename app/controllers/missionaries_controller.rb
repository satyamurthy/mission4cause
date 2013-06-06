class MissionariesController < ApplicationController
  before_filter :authenticate_user!, except: [:index]
  
  # GET /missionaries
  # GET /missionaries.json
  def index
    @missionaries = Missionary.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @missionaries }
    end
  end

  # GET /missionaries/1
  # GET /missionaries/1.json
  def show
    @missionary = Missionary.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @missionary }
    end
  end

  # GET /missionaries/new
  # GET /missionaries/new.json
  def new
    @missionary = Missionary.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @missionary }
    end
  end

  # GET /missionaries/1/edit
  def edit
    @missionary = Missionary.find(params[:id])
  end

  # POST /missionaries
  # POST /missionaries.json
  def create
    @missionary = Missionary.new(params[:missionary])

    respond_to do |format|
      if @missionary.save
        format.html { redirect_to @missionary, notice: 'Missionary was successfully created.' }
        format.json { render json: @missionary, status: :created, location: @missionary }
      else
        format.html { render action: "new" }
        format.json { render json: @missionary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /missionaries/1
  # PUT /missionaries/1.json
  def update
    @missionary = Missionary.find(params[:id])

    respond_to do |format|
      if @missionary.update_attributes(params[:missionary])
        format.html { redirect_to @missionary, notice: 'Missionary was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @missionary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /missionaries/1
  # DELETE /missionaries/1.json
  def destroy
    @missionary = Missionary.find(params[:id])
    @missionary.destroy

    respond_to do |format|
      format.html { redirect_to missionaries_url }
      format.json { head :no_content }
    end
  end
end
