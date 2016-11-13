class UpworksController < ApplicationController
  before_action :set_upwork, only: [:show, :edit, :update, :destroy]

  # GET /upworks
  # GET /upworks.json
  def index
    @upworks = Upwork.all
  end

  # GET /upworks/1
  # GET /upworks/1.json
  def show
  end

  # GET /upworks/new
  def new
    @upwork = Upwork.new
  end

  # GET /upworks/1/edit
  def edit
  end

  # POST /upworks
  # POST /upworks.json
  def create
    @upwork = Upwork.new(upwork_params)

    respond_to do |format|
      if @upwork.save
        format.html { redirect_to @upwork, notice: 'Upwork was successfully created.' }
        format.json { render :show, status: :created, location: @upwork }
      else
        format.html { render :new }
        format.json { render json: @upwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /upworks/1
  # PATCH/PUT /upworks/1.json
  def update
    respond_to do |format|
      if @upwork.update(upwork_params)
        format.html { redirect_to @upwork, notice: 'Upwork was successfully updated.' }
        format.json { render :show, status: :ok, location: @upwork }
      else
        format.html { render :edit }
        format.json { render json: @upwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /upworks/1
  # DELETE /upworks/1.json
  def destroy
    @upwork.destroy
    respond_to do |format|
      format.html { redirect_to upworks_url, notice: 'Upwork was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_upwork
      @upwork = Upwork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def upwork_params
      params.require(:upwork).permit(:name, :country_id, :skill_id, :rate, :hours, :jobs, :top)
    end
end
