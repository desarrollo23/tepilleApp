class EstacionsController < ApplicationController
  before_action :set_estacion, only: [:show, :update, :destroy]

  # GET /estacions
  def index
    @estacions = Estacion.all

    render json: @estacions
  end

  # GET /estacions/1
  def show
    render json: @estacion
  end

  # POST /estacions
  def create
    @estacion = Estacion.new(estacion_params)

    if @estacion.save
      StationsMailer.send_station.deliver
      render json: @estacion, status: :created, location: @estacion
    else
      render json: @estacion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /estacions/1
  def update
    if @estacion.update(estacion_params)
      render json: @estacion
    else
      render json: @estacion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /estacions/1
  def destroy
    @estacion.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estacion
      @estacion = Estacion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def estacion_params
      params.require(:estacion).permit(:nombre)
    end
end
