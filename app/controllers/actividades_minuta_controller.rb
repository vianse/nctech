class ActividadesMinutaController < ApplicationController
  before_action :set_actividades_minutum, only: [:show, :edit, :update, :destroy]

  # GET /actividades_minuta
  # GET /actividades_minuta.json
  def index
    @actividades_minuta = ActividadesMinutum.all
  end

  # GET /actividades_minuta/1
  # GET /actividades_minuta/1.json
  def show
  end

  # GET /actividades_minuta/new
  def new
    @actividades_minutum = ActividadesMinutum.new
  end

  # GET /actividades_minuta/1/edit
  def edit
  end

  # POST /actividades_minuta
  # POST /actividades_minuta.json
  def create
    @actividades_minutum = ActividadesMinutum.new(actividades_minutum_params)

    respond_to do |format|
      if @actividades_minutum.save
        format.html { redirect_to @actividades_minutum, notice: 'Actividades minutum was successfully created.' }
        format.json { render :show, status: :created, location: @actividades_minutum }
      else
        format.html { render :new }
        format.json { render json: @actividades_minutum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actividades_minuta/1
  # PATCH/PUT /actividades_minuta/1.json
  def update
    respond_to do |format|
      if @actividades_minutum.update(actividades_minutum_params)
        format.html { redirect_to @actividades_minutum, notice: 'Actividades minutum was successfully updated.' }
        format.json { render :show, status: :ok, location: @actividades_minutum }
      else
        format.html { render :edit }
        format.json { render json: @actividades_minutum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actividades_minuta/1
  # DELETE /actividades_minuta/1.json
  def destroy
    @actividades_minutum.destroy
    respond_to do |format|
      format.html { redirect_to actividades_minuta_url, notice: 'Actividades minutum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actividades_minutum
      @actividades_minutum = ActividadesMinutum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actividades_minutum_params
      params.require(:actividades_minutum).permit(:minutaToken, :responsable, :asunto, :actividad, :coResponsable, :fechaCompromiso, :userid)
    end
end
