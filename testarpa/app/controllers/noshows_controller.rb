class NoshowsController < ApplicationController
  before_action :set_noshow, only: [:show, :edit, :update, :destroy]

  # GET /noshows
  # GET /noshows.json
  def index
    @noshows = Noshow.all
  end

  # GET /noshows/1
  # GET /noshows/1.json
  def show
  end

  # GET /noshows/new
  def new
    @noshow = Noshow.new
  end

  # GET /noshows/1/edit
  def edit
  end

  # POST /noshows
  # POST /noshows.json
  def create
    @noshow = Noshow.new(noshow_params)

    respond_to do |format|
      if @noshow.save
        format.html { redirect_to @noshow, notice: 'Noshow was successfully created.' }
        format.json { render :show, status: :created, location: @noshow }
      else
        format.html { render :new }
        format.json { render json: @noshow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /noshows/1
  # PATCH/PUT /noshows/1.json
  def update
    respond_to do |format|
      if @noshow.update(noshow_params)
        format.html { redirect_to @noshow, notice: 'Noshow was successfully updated.' }
        format.json { render :show, status: :ok, location: @noshow }
      else
        format.html { render :edit }
        format.json { render json: @noshow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /noshows/1
  # DELETE /noshows/1.json
  def destroy
    @noshow.destroy
    respond_to do |format|
      format.html { redirect_to noshows_url, notice: 'Noshow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_noshow
      @noshow = Noshow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def noshow_params
      params.require(:noshow).permit(:amessage)
    end
end
