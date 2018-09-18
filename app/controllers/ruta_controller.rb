class RutaController < ApplicationController
  before_action :set_rutum, only: [:show, :update, :destroy]

  # GET /ruta
  def index
    @ruta = Rutum.all

    render json: @ruta
  end

  # GET /ruta/1
  def show
    render json: @rutum
  end

  # POST /ruta
  def create
    @rutum = Rutum.new(rutum_params)

    if @rutum.save
      render json: @rutum, status: :created, location: @rutum
    else
      render json: @rutum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ruta/1
  def update
    if @rutum.update(rutum_params)
      render json: @rutum
    else
      render json: @rutum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ruta/1
  def destroy
    @rutum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rutum
      @rutum = Rutum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rutum_params
      params.require(:rutum).permit(:nombre)
    end
end
