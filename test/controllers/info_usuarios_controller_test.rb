require 'test_helper'

class InfoUsuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @info_usuario = info_usuarios(:one)
  end

  test "should get index" do
    get info_usuarios_url, as: :json
    assert_response :success
  end

  test "should create info_usuario" do
    assert_difference('InfoUsuario.count') do
      post info_usuarios_url, params: { info_usuario: { Genero_id: @info_usuario.Genero_id, Localidad_id: @info_usuario.Localidad_id, Usuario_id: @info_usuario.Usuario_id, apellido: @info_usuario.apellido, correo: @info_usuario.correo, edad: @info_usuario.edad, nombre: @info_usuario.nombre, telefono: @info_usuario.telefono } }, as: :json
    end

    assert_response 201
  end

  test "should show info_usuario" do
    get info_usuario_url(@info_usuario), as: :json
    assert_response :success
  end

  test "should update info_usuario" do
    patch info_usuario_url(@info_usuario), params: { info_usuario: { Genero_id: @info_usuario.Genero_id, Localidad_id: @info_usuario.Localidad_id, Usuario_id: @info_usuario.Usuario_id, apellido: @info_usuario.apellido, correo: @info_usuario.correo, edad: @info_usuario.edad, nombre: @info_usuario.nombre, telefono: @info_usuario.telefono } }, as: :json
    assert_response 200
  end

  test "should destroy info_usuario" do
    assert_difference('InfoUsuario.count', -1) do
      delete info_usuario_url(@info_usuario), as: :json
    end

    assert_response 204
  end
end
