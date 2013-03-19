class RecitalAdTypesController < ApplicationController
  # GET /recital_ad_types
  # GET /recital_ad_types.json
  def index
    @recital_ad_types = RecitalAdType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recital_ad_types }
    end
  end

  # GET /recital_ad_types/1
  # GET /recital_ad_types/1.json
  def show
    @recital_ad_type = RecitalAdType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recital_ad_type }
    end
  end

  # GET /recital_ad_types/new
  # GET /recital_ad_types/new.json
  def new
    @recital_ad_type = RecitalAdType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recital_ad_type }
    end
  end

  # GET /recital_ad_types/1/edit
  def edit
    @recital_ad_type = RecitalAdType.find(params[:id])
  end

  # POST /recital_ad_types
  # POST /recital_ad_types.json
  def create
    @recital_ad_type = RecitalAdType.new(params[:recital_ad_type])

    respond_to do |format|
      if @recital_ad_type.save
        format.html { redirect_to @recital_ad_type, notice: 'Recital ad type was successfully created.' }
        format.json { render json: @recital_ad_type, status: :created, location: @recital_ad_type }
      else
        format.html { render action: "new" }
        format.json { render json: @recital_ad_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recital_ad_types/1
  # PUT /recital_ad_types/1.json
  def update
    @recital_ad_type = RecitalAdType.find(params[:id])

    respond_to do |format|
      if @recital_ad_type.update_attributes(params[:recital_ad_type])
        format.html { redirect_to @recital_ad_type, notice: 'Recital ad type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @recital_ad_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recital_ad_types/1
  # DELETE /recital_ad_types/1.json
  def destroy
    @recital_ad_type = RecitalAdType.find(params[:id])
    @recital_ad_type.destroy

    respond_to do |format|
      format.html { redirect_to recital_ad_types_url }
      format.json { head :no_content }
    end
  end
end
