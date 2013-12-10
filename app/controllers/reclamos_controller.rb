class ReclamosController < ApplicationController
  before_action :set_reclamo, only: [:show, :edit, :update, :destroy]

  # GET /reclamos
  # GET /reclamos.json
  def index
    @reclamos = Reclamo.all
  end

  # GET /reclamos/1
  # GET /reclamos/1.json
  def show
  end

  # GET /reclamos/new
  def new
    @reclamo = Reclamo.new
  end

  # GET /reclamos/1/edit
  def edit
  end

  # POST /reclamos
  # POST /reclamos.json
  def create
    @reclamo = Reclamo.new(reclamo_params)

    respond_to do |format|
      if @reclamo.save
        format.html { redirect_to @reclamo, notice: 'Reclamo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @reclamo }
      else
        format.html { render action: 'new' }
        format.json { render json: @reclamo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reclamos/1
  # PATCH/PUT /reclamos/1.json
  def update
    respond_to do |format|
      if @reclamo.update(reclamo_params)
        format.html { redirect_to @reclamo, notice: 'Reclamo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @reclamo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reclamos/1
  # DELETE /reclamos/1.json
  def destroy
    @reclamo.destroy
    respond_to do |format|
      format.html { redirect_to reclamos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reclamo
      @reclamo = Reclamo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reclamo_params
      params.require(:reclamo).permit(:asunto, :email)
    end
end
