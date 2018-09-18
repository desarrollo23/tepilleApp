require 'test_helper'

class EstacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estacion = estacions(:one)
  end

  test "should get index" do
    get estacions_url, as: :json
    assert_response :success
  end

  test "should create estacion" do
    assert_difference('Estacion.count') do
      post estacions_url, params: { estacion: { nombre: @estacion.nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show estacion" do
    get estacion_url(@estacion), as: :json
    assert_response :success
  end

  test "should update estacion" do
    patch estacion_url(@estacion), params: { estacion: { nombre: @estacion.nombre } }, as: :json
    assert_response 200
  end

  test "should destroy estacion" do
    assert_difference('Estacion.count', -1) do
      delete estacion_url(@estacion), as: :json
    end

    assert_response 204
  end
end
