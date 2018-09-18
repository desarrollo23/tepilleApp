require 'test_helper'

class RutaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rutum = ruta(:one)
  end

  test "should get index" do
    get ruta_url, as: :json
    assert_response :success
  end

  test "should create rutum" do
    assert_difference('Rutum.count') do
      post ruta_url, params: { rutum: { nombre: @rutum.nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show rutum" do
    get rutum_url(@rutum), as: :json
    assert_response :success
  end

  test "should update rutum" do
    patch rutum_url(@rutum), params: { rutum: { nombre: @rutum.nombre } }, as: :json
    assert_response 200
  end

  test "should destroy rutum" do
    assert_difference('Rutum.count', -1) do
      delete rutum_url(@rutum), as: :json
    end

    assert_response 204
  end
end
