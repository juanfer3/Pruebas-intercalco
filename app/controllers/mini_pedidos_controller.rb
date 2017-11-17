class MiniPedidosController < ApplicationController
  before_action :set_mini_pedido, only: [:show, :edit, :update, :destroy]

  # GET /mini_pedidos
  # GET /mini_pedidos.json
  def index
    @mini_pedidos = MiniPedido.all
  end

  # GET /mini_pedidos/1
  # GET /mini_pedidos/1.json
  def show
  end

  # GET /mini_pedidos/new
  def new
    @mini_pedido = MiniPedido.new
  end

  # GET /mini_pedidos/1/edit
  def edit
  end

  # POST /mini_pedidos
  # POST /mini_pedidos.json
  def create
    @mini_pedido = MiniPedido.new(mini_pedido_params)

    respond_to do |format|
      if @mini_pedido.save
        format.html { redirect_to @mini_pedido, notice: 'Mini pedido was successfully created.' }
        format.json { render :show, status: :created, location: @mini_pedido }
      else
        format.html { render :new }
        format.json { render json: @mini_pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mini_pedidos/1
  # PATCH/PUT /mini_pedidos/1.json
  def update
    respond_to do |format|
      if @mini_pedido.update(mini_pedido_params)
        format.html { redirect_to @mini_pedido, notice: 'Mini pedido was successfully updated.' }
        format.json { render :show, status: :ok, location: @mini_pedido }
      else
        format.html { render :edit }
        format.json { render json: @mini_pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mini_pedidos/1
  # DELETE /mini_pedidos/1.json
  def destroy
    @mini_pedido.destroy
    respond_to do |format|
      format.html { redirect_to mini_pedidos_url, notice: 'Mini pedido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mini_pedido
      @mini_pedido = MiniPedido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mini_pedido_params
      params.require(:mini_pedido).permit(:nombre, :cantidad, :pedido_id, :tinta_id)
    end
end
