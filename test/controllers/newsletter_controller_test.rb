require 'test_helper'

class NewsletterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get newsletter_index_url
    assert_response :success
  end

  test "should get crear" do
    get newsletter_crear_url
    assert_response :success
  end

  test "should get editar" do
    get newsletter_editar_url
    assert_response :success
  end

  test "should get ver" do
    get newsletter_ver_url
    assert_response :success
  end

end
