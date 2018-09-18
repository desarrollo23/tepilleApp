require 'test_helper'

class FotoReportesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foto_reporte = foto_reportes(:one)
  end

  test "should get index" do
    get foto_reportes_url, as: :json
    assert_response :success
  end

  test "should create foto_reporte" do
    assert_difference('FotoReporte.count') do
      post foto_reportes_url, params: { foto_reporte: { Foto: @foto_reporte.Foto, Reporte_id: @foto_reporte.Reporte_id } }, as: :json
    end

    assert_response 201
  end

  test "should show foto_reporte" do
    get foto_reporte_url(@foto_reporte), as: :json
    assert_response :success
  end

  test "should update foto_reporte" do
    patch foto_reporte_url(@foto_reporte), params: { foto_reporte: { Foto: @foto_reporte.Foto, Reporte_id: @foto_reporte.Reporte_id } }, as: :json
    assert_response 200
  end

  test "should destroy foto_reporte" do
    assert_difference('FotoReporte.count', -1) do
      delete foto_reporte_url(@foto_reporte), as: :json
    end

    assert_response 204
  end
end
