require 'test_helper'

class ChecklistControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get checklist_index_url
    assert_response :success
  end

  test "should get crear" do
    get checklist_crear_url
    assert_response :success
  end

  test "should get editar" do
    get checklist_editar_url
    assert_response :success
  end

  test "should get ver" do
    get checklist_ver_url
    assert_response :success
  end

end
