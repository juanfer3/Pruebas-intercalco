class DescripcionAcabadosController < ApplicationController
  before_action :set_descripcion_acabado, only: [:show, :edit, :update, :destroy]

  # GET /descripcion_acabados
  # GET /descripcion_acabados.json
  def index
    @descripcion_acabados = DescripcionAcabado.all
  end

  # GET /descripcion_acabados/1
  # GET /descripcion_acabados/1.json
  def show
  end

  # GET /descripcion_acabados/new
  def new
    @descripcion_acabado = DescripcionAcabado.new
  end

  # GET /descripcion_acabados/1/edit
  def edit
  end

  # POST /descripcion_acabados
  # POST /descripcion_acabados.json
  def create
    @descripcion_acabado = DescripcionAcabado.new(descripcion_acabado_params)

    respond_to do |format|
      if @descripcion_acabado.save
        format.html { redirect_to @descripcion_acabado, notice: 'Descripcion acabado was successfully created.' }
        format.json { render :show, status: :created, location: @descripcion_acabado }
      else
        format.html { render :new }
        format.json { render json: @descripcion_acabado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /descripcion_acabados/1
  # PATCH/PUT /descripcion_acabados/1.json
  def update
    respond_to do |format|
      if @descripcion_acabado.update(descripcion_acabado_params)
        format.html { redirect_to @descripcion_acabado, notice: 'Descripcion acabado was successfully updated.' }
        format.json { render :show, status: :ok, location: @descripcion_acabado }
      else
        format.html { render :edit }
        format.json { render json: @descripcion_acabado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /descripcion_acabados/1
  # DELETE /descripcion_acabados/1.json
  def destroy
    @descripcion_acabado.destroy
    respond_to do |format|
      format.html { redirect_to descripcion_acabados_url, notice: 'Descripcion acabado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_descripcion_acabado
      @descripcion_acabado = DescripcionAcabado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def descripcion_acabado_params
      params.require(:descripcion_acabado).permit(:detalle_pedido_id, :acabado_id)
    end
end
