require 'test_helper'

class PoliticaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get politica_index_url
    assert_response :success
  end

  test "should get crear" do
    get politica_crear_url
    assert_response :success
  end

  test "should get editar" do
    get politica_editar_url
    assert_response :success
  end

  test "should get ver" do
    get politica_ver_url
    assert_response :success
  end

end
