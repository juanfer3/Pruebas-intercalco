class CantidadesTintasController < ApplicationController
  before_action :set_cantidad_tinta, only: [:show, :edit, :update, :destroy]

  # GET /cantidades_tintas
  # GET /cantidades_tintas.json
  def index
    @cantidades_tintas = CantidadTinta.all
  end

  # GET /cantidades_tintas/1
  # GET /cantidades_tintas/1.json
  def show
  end

  # GET /cantidades_tintas/new
  def new
    @cantidad_tinta = CantidadTinta.new
  end

  # GET /cantidades_tintas/1/edit
  def edit
  end

  # POST /cantidades_tintas
  # POST /cantidades_tintas.json
  def create
    @cantidad_tinta = CantidadTinta.new(cantidad_tinta_params)

    respond_to do |format|
      if @cantidad_tinta.save
        format.html { redirect_to @cantidad_tinta, notice: 'Cantidad tinta was successfully created.' }
        format.json { render :show, status: :created, location: @cantidad_tinta }
      else
        format.html { render :new }
        format.json { render json: @cantidad_tinta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cantidades_tintas/1
  # PATCH/PUT /cantidades_tintas/1.json
  def update
    respond_to do |format|
      if @cantidad_tinta.update(cantidad_tinta_params)
        format.html { redirect_to @cantidad_tinta, notice: 'Cantidad tinta was successfully updated.' }
        format.json { render :show, status: :ok, location: @cantidad_tinta }
      else
        format.html { render :edit }
        format.json { render json: @cantidad_tinta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cantidades_tintas/1
  # DELETE /cantidades_tintas/1.json
  def destroy
    @cantidad_tinta.destroy
    respond_to do |format|
      format.html { redirect_to cantidades_tintas_url, notice: 'Cantidad tinta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cantidad_tinta
      @cantidad_tinta = CantidadTinta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cantidad_tinta_params
      params.require(:cantidad_tinta).permit(:detalle_pedido_id, :tinta_id)
    end
end
