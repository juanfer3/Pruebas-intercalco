class DetallesPedidoController < ApplicationController
  before_action :set_detalle_pedido, only: [:show, :edit, :update, :destroy]

  # GET /detalles_pedido
  # GET /detalles_pedido.json
  def index
    @detalles_pedido = DetallePedido.all
  end

  # GET /detalles_pedido/1
  # GET /detalles_pedido/1.json
  def show
  end

  # GET /detalles_pedido/new
  def new
    @detalle_pedido = DetallePedido.new
  end

  # GET /detalles_pedido/1/edit
  def edit
  end

  # POST /detalles_pedido
  # POST /detalles_pedido.json
  def create
    @detalle_pedido = DetallePedido.new(detalle_pedido_params)

    respond_to do |format|
      if @detalle_pedido.save
        format.html { redirect_to @detalle_pedido, notice: 'Detalle pedido was successfully created.' }
        format.json { render :show, status: :created, location: @detalle_pedido }
      else
        format.html { render :new }
        format.json { render json: @detalle_pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detalles_pedido/1
  # PATCH/PUT /detalles_pedido/1.json
  def update
    respond_to do |format|
      if @detalle_pedido.update(detalle_pedido_params)
        format.html { redirect_to @detalle_pedido, notice: 'Detalle pedido was successfully updated.' }
        format.json { render :show, status: :ok, location: @detalle_pedido }
      else
        format.html { render :edit }
        format.json { render json: @detalle_pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalles_pedido/1
  # DELETE /detalles_pedido/1.json
  def destroy
    @detalle_pedido.destroy
    respond_to do |format|
      format.html { redirect_to detalles_pedido_url, notice: 'Detalle pedido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detalle_pedido
      @detalle_pedido = DetallePedido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detalle_pedido_params
      params.require(:detalle_pedido).permit(:pedido_id, :descripcion, :producto, :sustrato, :tecnica_de_impresion_id, :tamano, :cantidad, :precio, :total)
    end
end
