class FotosController < ApplicationController
  before_action :set_foto, only: [:show, :update, :destroy]

  # GET /fotos
  def index
    @fotos = Foto.all

    render json: @fotos
  end

  # GET /fotos/1
  def show
    render json: @foto
  end

  # POST /fotos
  def create
    @foto = Foto.new(foto_params)

    if @foto.save
      render json: @foto, status: :created, location: @foto
    else
      render json: @foto.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fotos/1
  def update
    if @foto.update(foto_params)
      render json: @foto
    else
      render json: @foto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fotos/1
  def destroy
    @foto.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foto
      @foto = Foto.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def foto_params
      params.require(:foto).permit(:descripcion)
    end
end
