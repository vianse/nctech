require 'test_helper'

class ArchivosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get archivos_index_url
    assert_response :success
  end

  test "should get crear" do
    get archivos_crear_url
    assert_response :success
  end

  test "should get editar" do
    get archivos_editar_url
    assert_response :success
  end

  test "should get ver" do
    get archivos_ver_url
    assert_response :success
  end

end
