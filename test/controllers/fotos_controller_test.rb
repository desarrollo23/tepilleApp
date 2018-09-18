require 'test_helper'

class FotosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foto = fotos(:one)
  end

  test "should get index" do
    get fotos_url, as: :json
    assert_response :success
  end

  test "should create foto" do
    assert_difference('Foto.count') do
      post fotos_url, params: { foto: { descripcion: @foto.descripcion } }, as: :json
    end

    assert_response 201
  end

  test "should show foto" do
    get foto_url(@foto), as: :json
    assert_response :success
  end

  test "should update foto" do
    patch foto_url(@foto), params: { foto: { descripcion: @foto.descripcion } }, as: :json
    assert_response 200
  end

  test "should destroy foto" do
    assert_difference('Foto.count', -1) do
      delete foto_url(@foto), as: :json
    end

    assert_response 204
  end
end
