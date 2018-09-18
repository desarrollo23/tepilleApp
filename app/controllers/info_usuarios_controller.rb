class InfoUsuariosController < ApplicationController
  before_action :set_info_usuario, only: [:show, :update, :destroy]

  # GET /info_usuarios
  def index
    @info_usuarios = InfoUsuario.all

    render json: @info_usuarios
  end

  # GET /info_usuarios/1
  def show
    render json: @info_usuario
  end

  # POST /info_usuarios
  def create
    @info_usuario = InfoUsuario.new(info_usuario_params)

    if @info_usuario.save
      render json: @info_usuario, status: :created, location: @info_usuario
    else
      render json: @info_usuario.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /info_usuarios/1
  def update
    if @info_usuario.update(info_usuario_params)
      render json: @info_usuario
    else
      render json: @info_usuario.errors, status: :unprocessable_entity
    end
  end

  # DELETE /info_usuarios/1
  def destroy
    @info_usuario.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info_usuario
      @info_usuario = InfoUsuario.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def info_usuario_params
      params.require(:info_usuario).permit(:nombre, :apellido, :edad, :correo, :telefono, :Localidad_id, :Genero_id, :Usuario_id)
    end
end
