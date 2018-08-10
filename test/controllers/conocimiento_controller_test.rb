require 'test_helper'

class ConocimientoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get conocimiento_index_url
    assert_response :success
  end

  test "should get crear" do
    get conocimiento_crear_url
    assert_response :success
  end

  test "should get editar" do
    get conocimiento_editar_url
    assert_response :success
  end

  test "should get ver" do
    get conocimiento_ver_url
    assert_response :success
  end

end
