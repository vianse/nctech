require 'test_helper'

class UsuariosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get usuarios_index_url
    assert_response :success
  end

  test "should get crear" do
    get usuarios_crear_url
    assert_response :success
  end

  test "should get editar" do
    get usuarios_editar_url
    assert_response :success
  end

  test "should get ver" do
    get usuarios_ver_url
    assert_response :success
  end

end
