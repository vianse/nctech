require 'test_helper'

class EnlacesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get enlaces_index_url
    assert_response :success
  end

  test "should get ver" do
    get enlaces_ver_url
    assert_response :success
  end

  test "should get crear" do
    get enlaces_crear_url
    assert_response :success
  end

  test "should get eliminar" do
    get enlaces_eliminar_url
    assert_response :success
  end

end
