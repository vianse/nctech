require 'test_helper'

class PerfilControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get perfil_index_url
    assert_response :success
  end

  test "should get crear" do
    get perfil_crear_url
    assert_response :success
  end

  test "should get editar" do
    get perfil_editar_url
    assert_response :success
  end

  test "should get ver" do
    get perfil_ver_url
    assert_response :success
  end

end
