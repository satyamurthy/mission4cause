class CausesController < ApplicationController
  before_filter :authenticate_user!, except: [:index]
  # GET /causes
  # GET /causes.json
  def index
    @causes = Cause.order("created_at desc")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @causes }
    end
  end

  # GET /causes/1
  # GET /causes/1.json
  def show
    @cause = Cause.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cause }
    end
  end

  # GET /causes/new
  # GET /causes/new.json
  def new
    @cause = current_user.causes.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cause }
    end
  end

  # GET /causes/1/edit
  def edit
    @cause = current_user.causes.find(params[:id])
  end

  # POST /causes
  # POST /causes.json
  def create
    @cause = current_user.causes.new(params[:cause])

    respond_to do |format|
      if @cause.save
        format.html { redirect_to @cause, notice: 'Cause was successfully created.' }
        format.json { render json: @cause, status: :created, location: @cause }
      else
        format.html { render action: "new" }
        format.json { render json: @cause.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /causes/1
  # PUT /causes/1.json
  def update
    @cause = current_user.causes.find(params[:id])

    respond_to do |format|
      if @cause.update_attributes(params[:cause])
        format.html { redirect_to @cause, notice: 'Cause was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cause.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /causes/1
  # DELETE /causes/1.json
  def destroy
    @cause = current_user.causes.find(params[:id])
    @cause.destroy

    respond_to do |format|
      format.html { redirect_to causes_url }
      format.json { head :no_content }
    end
  end
end
