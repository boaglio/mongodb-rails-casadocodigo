class SeriadosController < ApplicationController
  before_action :set_seriado, only: [:show, :edit, :update, :destroy]

  # GET /seriados
  # GET /seriados.json
  def index
    @seriados = Seriado.all
  end

  # GET /seriados/1
  # GET /seriados/1.json
  def show
  end

  # GET /seriados/new
  def new
    @seriado = Seriado.new
  end

  # GET /seriados/1/edit
  def edit
  end

  # POST /seriados
  # POST /seriados.json
  def create
    @seriado = Seriado.new(seriado_params)

    respond_to do |format|
      if @seriado.save
        format.html { redirect_to @seriado, notice: 'Seriado was successfully created.' }
        format.json { render :show, status: :created, location: @seriado }
      else
        format.html { render :new }
        format.json { render json: @seriado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seriados/1
  # PATCH/PUT /seriados/1.json
  def update
    respond_to do |format|
      if @seriado.update(seriado_params)
        format.html { redirect_to @seriado, notice: 'Seriado was successfully updated.' }
        format.json { render :show, status: :ok, location: @seriado }
      else
        format.html { render :edit }
        format.json { render json: @seriado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seriados/1
  # DELETE /seriados/1.json
  def destroy
    @seriado.destroy
    respond_to do |format|
      format.html { redirect_to seriados_url, notice: 'Seriado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seriado
      @seriado = Seriado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seriado_params
      params.require(:seriado).permit(:nome, :personagens)
    end
end
