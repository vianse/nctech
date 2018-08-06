class ObjetivoMinutaController < ApplicationController
  before_action :set_objetivo_minutum, only: [:show, :edit, :update, :destroy]

  # GET /objetivo_minuta
  # GET /objetivo_minuta.json
  def index
    @objetivo_minuta = ObjetivoMinutum.all
  end

  # GET /objetivo_minuta/1
  # GET /objetivo_minuta/1.json
  def show
  end

  # GET /objetivo_minuta/new
  def new
    @objetivo_minutum = ObjetivoMinutum.new
  end

  # GET /objetivo_minuta/1/edit
  def edit
  end

  # POST /objetivo_minuta
  # POST /objetivo_minuta.json
  def create
    @objetivo_minutum = ObjetivoMinutum.new(objetivo_minutum_params)

    respond_to do |format|
      if @objetivo_minutum.save
        format.html { redirect_to @objetivo_minutum, notice: 'Objetivo minutum was successfully created.' }
        format.json { render :show, status: :created, location: @objetivo_minutum }
      else
        format.html { render :new }
        format.json { render json: @objetivo_minutum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /objetivo_minuta/1
  # PATCH/PUT /objetivo_minuta/1.json
  def update
    respond_to do |format|
      if @objetivo_minutum.update(objetivo_minutum_params)
        format.html { redirect_to @objetivo_minutum, notice: 'Objetivo minutum was successfully updated.' }
        format.json { render :show, status: :ok, location: @objetivo_minutum }
      else
        format.html { render :edit }
        format.json { render json: @objetivo_minutum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /objetivo_minuta/1
  # DELETE /objetivo_minuta/1.json
  def destroy
    @objetivo_minutum.destroy
    respond_to do |format|
      format.html { redirect_to objetivo_minuta_url, notice: 'Objetivo minutum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_objetivo_minutum
      @objetivo_minutum = ObjetivoMinutum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def objetivo_minutum_params
      params.require(:objetivo_minutum).permit(:minutaToken, :objetivo, :fechaRevision, :userid)
    end
end
