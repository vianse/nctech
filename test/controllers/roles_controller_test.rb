require 'test_helper'

class RolesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get roles_index_url
    assert_response :success
  end

  test "should get crear" do
    get roles_crear_url
    assert_response :success
  end

  test "should get editar" do
    get roles_editar_url
    assert_response :success
  end

  test "should get ver" do
    get roles_ver_url
    assert_response :success
  end

end
