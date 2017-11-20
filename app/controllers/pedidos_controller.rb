class PedidosController < ApplicationController
  before_action :set_pedido, only: [:show, :edit, :update, :destroy]

  # GET /pedidos
  # GET /pedidos.json
  def index
    @pedidos = Pedido.all
  end

  # GET /pedidos/1
  # GET /pedidos/1.json
  def show
  end

  # GET /pedidos/new
  def new
    @pedido = Pedido.new
    @pedido = Pedido.new
    @pedido.detalles_pedido.build
    @pedido.tiempos_de_entregas.build
    @contacto = Contacto.new
    @linea_de_impresion = LineaDeImpresion.new
  end

  # GET /pedidos/1/edit
  def edit
  end

  # POST /pedidos
  # POST /pedidos.json
  def create
    @pedido = Pedido.new(pedido_params)

    respond_to do |format|
      if @pedido.save
        format.html { redirect_to @pedido, notice: 'Pedido was successfully created.' }
        format.json { render :show, status: :created, location: @pedido }
      else
        format.html { render :new }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedidos/1
  # PATCH/PUT /pedidos/1.json
  def update
    respond_to do |format|
      if @pedido.update(pedido_params)
        format.html { redirect_to @pedido, notice: 'Pedido was successfully updated.' }
        format.json { render :show, status: :ok, location: @pedido }
      else
        format.html { render :edit }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedidos/1
  # DELETE /pedidos/1.json
  def destroy
    @pedido.destroy
    respond_to do |format|
      format.html { redirect_to pedidos_url, notice: 'Pedido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido
      @pedido = Pedido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedido_params
      params.require(:pedido).permit(:contacto_id, :despacho_id, :factura_id, :producto, :tipo_de_trabajo, :fecha_entrega, :fecha_de_pedido, :numero_pedido, :linea_de_impresion_id, :numero_cotizacion, :forma_de_pago, :arte, :observaciones, :estado_pedido, :total_fechas_decompromiso, :estado, #)
      detalles_pedido_attributes:[:pedido_id, :descripcion, :producto, :sustrato, :tecnica_de_impresion_id, :tamano, :cantidad, :precio, :total],
      tiempos_de_entregas_attributes:[:pedido_id, :cantidad, :fecha_compromiso, :costo],
      despachos_attributes:[:cliente_id, :nombre, :lugar_de_entrega, :telefono, :celular, :correo],
      facturas_attributes:[:cliente_id, :nombre, :nit, :telefono, :lugar_de_factura, :telefono, :correo, :recibe])
    end
end
