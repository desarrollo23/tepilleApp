class FotoReportesController < ApplicationController
  before_action :set_foto_reporte, only: [:show, :update, :destroy]

  # GET /foto_reportes
  def index
    @foto_reportes = FotoReporte.all

    render json: @foto_reportes
  end

  # GET /foto_reportes/1
  def show
    render json: @foto_reporte
  end

  # POST /foto_reportes
  def create
    @foto_reporte = FotoReporte.new(foto_reporte_params)

    if @foto_reporte.save
      render json: @foto_reporte, status: :created, location: @foto_reporte
    else
      render json: @foto_reporte.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /foto_reportes/1
  def update
    if @foto_reporte.update(foto_reporte_params)
      render json: @foto_reporte
    else
      render json: @foto_reporte.errors, status: :unprocessable_entity
    end
  end

  # DELETE /foto_reportes/1
  def destroy
    @foto_reporte.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foto_reporte
      @foto_reporte = FotoReporte.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def foto_reporte_params
      params.require(:foto_reporte).permit(:Foto, :Reporte_id)
    end
end
