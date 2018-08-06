require 'test_helper'

class PoliControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get poli_index_url
    assert_response :success
  end

  test "should get crear" do
    get poli_crear_url
    assert_response :success
  end

  test "should get editar" do
    get poli_editar_url
    assert_response :success
  end

  test "should get ver" do
    get poli_ver_url
    assert_response :success
  end

end
