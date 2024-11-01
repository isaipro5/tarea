class DetallePedidosController < ApplicationController
  before_action :set_detalle_pedido, only: %i[ show edit update destroy ]

  # GET /detalle_pedidos or /detalle_pedidos.json
  def index
    @detalle_pedidos = DetallePedido.all
  end

  # GET /detalle_pedidos/1 or /detalle_pedidos/1.json
  def show
  end

  # GET /detalle_pedidos/new
  def new
    @detalle_pedido = DetallePedido.new
  end

  # GET /detalle_pedidos/1/edit
  def edit
  end

  # POST /detalle_pedidos or /detalle_pedidos.json
  def create
    @detalle_pedido = DetallePedido.new(detalle_pedido_params)

    respond_to do |format|
      if @detalle_pedido.save
        format.html { redirect_to @detalle_pedido, notice: "Detalle pedido was successfully created." }
        format.json { render :show, status: :created, location: @detalle_pedido }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @detalle_pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detalle_pedidos/1 or /detalle_pedidos/1.json
  def update
    respond_to do |format|
      if @detalle_pedido.update(detalle_pedido_params)
        format.html { redirect_to @detalle_pedido, notice: "Detalle pedido was successfully updated." }
        format.json { render :show, status: :ok, location: @detalle_pedido }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @detalle_pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalle_pedidos/1 or /detalle_pedidos/1.json
  def destroy
    @detalle_pedido.destroy!

    respond_to do |format|
      format.html { redirect_to detalle_pedidos_path, status: :see_other, notice: "Detalle pedido was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detalle_pedido
      @detalle_pedido = DetallePedido.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def detalle_pedido_params
      params.require(:detalle_pedido).permit(:id_detalle, :id_pedido, :id_producto)
    end
end
