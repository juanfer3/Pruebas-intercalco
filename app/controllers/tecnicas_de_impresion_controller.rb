class TecnicasDeImpresionController < ApplicationController
  before_action :set_tecnica_de_impresion, only: [:show, :edit, :update, :destroy]

  # GET /tecnicas_de_impresion
  # GET /tecnicas_de_impresion.json
  def index
    @tecnicas_de_impresion = TecnicaDeImpresion.all
    @tecnicas_de_impresion.detalles_pedido.build
  end

  # GET /tecnicas_de_impresion/1
  # GET /tecnicas_de_impresion/1.json
  def show
  end

  # GET /tecnicas_de_impresion/new
  def new
    @tecnica_de_impresion = TecnicaDeImpresion.new
  end

  # GET /tecnicas_de_impresion/1/edit
  def edit
  end

  # POST /tecnicas_de_impresion
  # POST /tecnicas_de_impresion.json
  def create
    @tecnica_de_impresion = TecnicaDeImpresion.new(tecnica_de_impresion_params)

    respond_to do |format|
      if @tecnica_de_impresion.save
        format.html { redirect_to @tecnica_de_impresion, notice: 'Tecnica de impresion was successfully created.' }
        format.json { render :show, status: :created, location: @tecnica_de_impresion }
      else
        format.html { render :new }
        format.json { render json: @tecnica_de_impresion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tecnicas_de_impresion/1
  # PATCH/PUT /tecnicas_de_impresion/1.json
  def update
    respond_to do |format|
      if @tecnica_de_impresion.update(tecnica_de_impresion_params)
        format.html { redirect_to @tecnica_de_impresion, notice: 'Tecnica de impresion was successfully updated.' }
        format.json { render :show, status: :ok, location: @tecnica_de_impresion }
      else
        format.html { render :edit }
        format.json { render json: @tecnica_de_impresion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tecnicas_de_impresion/1
  # DELETE /tecnicas_de_impresion/1.json
  def destroy
    @tecnica_de_impresion.destroy
    respond_to do |format|
      format.html { redirect_to tecnicas_de_impresion_url, notice: 'Tecnica de impresion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tecnica_de_impresion
      @tecnica_de_impresion = TecnicaDeImpresion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tecnica_de_impresion_params
      params.require(:tecnica_de_impresion).permit(:tecnica, :descripcion, :estado)
    end
end
