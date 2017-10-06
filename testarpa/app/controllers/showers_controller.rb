class ShowersController < ApplicationController
  before_action :set_shower, only: [:show, :edit, :update, :destroy]

  # GET /showers
  # GET /showers.json
  def index
    @showers = Shower.all
  end

  # GET /showers/1
  # GET /showers/1.json
  def show
  end

  # GET /showers/new
  def new
    @shower = Shower.new
  end

  # GET /showers/1/edit
  def edit
  end

  # POST /showers
  # POST /showers.json
  def create
    @shower = Shower.new(shower_params)

    respond_to do |format|
      if @shower.save
        format.html { redirect_to @shower, notice: 'Shower was successfully created.' }
        format.json { render :show, status: :created, location: @shower }
      else
        format.html { render :new }
        format.json { render json: @shower.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /showers/1
  # PATCH/PUT /showers/1.json
  def update
    respond_to do |format|
      if @shower.update(shower_params)
        format.html { redirect_to @shower, notice: 'Shower was successfully updated.' }
        format.json { render :show, status: :ok, location: @shower }
      else
        format.html { render :edit }
        format.json { render json: @shower.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /showers/1
  # DELETE /showers/1.json
  def destroy
    @shower.destroy
    respond_to do |format|
      format.html { redirect_to showers_url, notice: 'Shower was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shower
      @shower = Shower.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shower_params
      params.require(:shower).permit(:welcomer)
    end
end
