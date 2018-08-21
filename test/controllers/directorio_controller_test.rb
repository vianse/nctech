require 'test_helper'

class DirectorioControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get directorio_index_url
    assert_response :success
  end

  test "should get crear" do
    get directorio_crear_url
    assert_response :success
  end

  test "should get editar" do
    get directorio_editar_url
    assert_response :success
  end

  test "should get ver" do
    get directorio_ver_url
    assert_response :success
  end

end
