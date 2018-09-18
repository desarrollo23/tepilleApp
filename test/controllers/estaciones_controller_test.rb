require 'test_helper'

class EstacionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estacione = estaciones(:one)
  end

  test "should get index" do
    get estaciones_url, as: :json
    assert_response :success
  end

  test "should create estacione" do
    assert_difference('Estacione.count') do
      post estaciones_url, params: { estacione: { nombre: @estacione.nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show estacione" do
    get estacione_url(@estacione), as: :json
    assert_response :success
  end

  test "should update estacione" do
    patch estacione_url(@estacione), params: { estacione: { nombre: @estacione.nombre } }, as: :json
    assert_response 200
  end

  test "should destroy estacione" do
    assert_difference('Estacione.count', -1) do
      delete estacione_url(@estacione), as: :json
    end

    assert_response 204
  end
end
