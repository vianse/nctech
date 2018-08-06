class MinutaController < ApplicationController
  before_action :set_minutum, only: [:show, :edit, :update, :destroy]

  # GET /minuta
  # GET /minuta.json
  def index
    @minuta = Minutum.all
  end

  # GET /minuta/1
  # GET /minuta/1.json
  def show
  end

  def editar
  end

  def ver
  end

  # GET /minuta/new
  def new
    @minutum = Minutum.new
    @uid = SecureRandom.hex(10)
  end

  # GET /minuta/1/edit
  def edit
  end

  # POST /minuta
  # POST /minuta.json
  def create
    @minutum = Minutum.new(minutum_params)

    respond_to do |format|
      if @minutum.save
        format.html { redirect_to @minutum, notice: 'Minutum was successfully created.' }
        format.json { render :edit, status: :created, location: @minutum }
      else
        format.html { render :new }
        format.json { render json: @minutum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /minuta/1
  # PATCH/PUT /minuta/1.json
  def update
    respond_to do |format|
      if @minutum.update(minutum_params)
        format.html { redirect_to @minutum, notice: 'Minutum was successfully updated.' }
        format.json { render :edit, status: :ok, location: @minutum }
      else
        format.html { render :edit }
        format.json { render json: @minutum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /minuta/1
  # DELETE /minuta/1.json
  def destroy
    @minutum.destroy
    respond_to do |format|
      format.html { redirect_to minuta_url, notice: 'Minutum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_minutum
    #  @minutum = Minutum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def minutum_params
      params.require(:minutum).permit(:fecha, :inicio, :final, :fw, :nombre, :fechaProximaReunion, :organizador, :secretario, :userId, :token)
    end
end
