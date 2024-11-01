class UsuarioIntranetsController < ApplicationController
  before_action :set_usuario_intranet, only: %i[ show edit update destroy ]

  # GET /usuario_intranets or /usuario_intranets.json
  def index
    @usuario_intranets = UsuarioIntranet.all
  end

  # GET /usuario_intranets/1 or /usuario_intranets/1.json
  def show
  end

  # GET /usuario_intranets/new
  def new
    @usuario_intranet = UsuarioIntranet.new
  end

  # GET /usuario_intranets/1/edit
  def edit
  end

  # POST /usuario_intranets or /usuario_intranets.json
  def create
    @usuario_intranet = UsuarioIntranet.new(usuario_intranet_params)

    respond_to do |format|
      if @usuario_intranet.save
        format.html { redirect_to @usuario_intranet, notice: "Usuario intranet was successfully created." }
        format.json { render :show, status: :created, location: @usuario_intranet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @usuario_intranet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_intranets/1 or /usuario_intranets/1.json
  def update
    respond_to do |format|
      if @usuario_intranet.update(usuario_intranet_params)
        format.html { redirect_to @usuario_intranet, notice: "Usuario intranet was successfully updated." }
        format.json { render :show, status: :ok, location: @usuario_intranet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @usuario_intranet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_intranets/1 or /usuario_intranets/1.json
  def destroy
    @usuario_intranet.destroy!

    respond_to do |format|
      format.html { redirect_to usuario_intranets_path, status: :see_other, notice: "Usuario intranet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_intranet
      @usuario_intranet = UsuarioIntranet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def usuario_intranet_params
      params.require(:usuario_intranet).permit(:id_usuario, :nombre, :email)
    end
end
