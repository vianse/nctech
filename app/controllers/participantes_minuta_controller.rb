class ParticipantesMinutaController < ApplicationController
  before_action :set_participantes_minutum, only: [:show, :edit, :update, :destroy]

  # GET /participantes_minuta
  # GET /participantes_minuta.json
  def index
    @participantes_minuta = ParticipantesMinutum.all
  end

  # GET /participantes_minuta/1
  # GET /participantes_minuta/1.json
  def show
  end

  # GET /participantes_minuta/new
  def new
    @participantes_minutum = ParticipantesMinutum.new
  end

  # GET /participantes_minuta/1/edit
  def edit
  end

  # POST /participantes_minuta
  # POST /participantes_minuta.json
  def create
    @participantes_minutum = ParticipantesMinutum.new(participantes_minutum_params)

    respond_to do |format|
      if @participantes_minutum.save
        format.html { redirect_to @participantes_minutum, notice: 'Participantes minutum was successfully created.' }
        format.json { render :show, status: :created, location: @participantes_minutum }
      else
        format.html { render :new }
        format.json { render json: @participantes_minutum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /participantes_minuta/1
  # PATCH/PUT /participantes_minuta/1.json
  def update
    respond_to do |format|
      if @participantes_minutum.update(participantes_minutum_params)
        format.html { redirect_to @participantes_minutum, notice: 'Participantes minutum was successfully updated.' }
        format.json { render :show, status: :ok, location: @participantes_minutum }
      else
        format.html { render :edit }
        format.json { render json: @participantes_minutum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participantes_minuta/1
  # DELETE /participantes_minuta/1.json
  def destroy
    @participantes_minutum.destroy
    respond_to do |format|
      format.html { redirect_to participantes_minuta_url, notice: 'Participantes minutum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participantes_minutum
      @participantes_minutum = ParticipantesMinutum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def participantes_minutum_params
      params.require(:participantes_minutum).permit(:minutaToken, :nombre, :puesto, :asistencia, :userid)
    end
end
