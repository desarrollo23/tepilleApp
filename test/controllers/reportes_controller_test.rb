require 'test_helper'

class ReportesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reporte = reportes(:one)
  end

  test "should get index" do
    get reportes_url, as: :json
    assert_response :success
  end

  test "should create reporte" do
    assert_difference('Reporte.count') do
      post reportes_url, params: { reporte: { Estacion_id: @reporte.Estacion_id, Ruta_id: @reporte.Ruta_id, Usuario_id: @reporte.Usuario_id, descripcion: @reporte.descripcion, fecha: @reporte.fecha, ubicacion: @reporte.ubicacion } }, as: :json
    end

    assert_response 201
  end

  test "should show reporte" do
    get reporte_url(@reporte), as: :json
    assert_response :success
  end

  test "should update reporte" do
    patch reporte_url(@reporte), params: { reporte: { Estacion_id: @reporte.Estacion_id, Ruta_id: @reporte.Ruta_id, Usuario_id: @reporte.Usuario_id, descripcion: @reporte.descripcion, fecha: @reporte.fecha, ubicacion: @reporte.ubicacion } }, as: :json
    assert_response 200
  end

  test "should destroy reporte" do
    assert_difference('Reporte.count', -1) do
      delete reporte_url(@reporte), as: :json
    end

    assert_response 204
  end
end
