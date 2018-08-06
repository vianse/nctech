require 'test_helper'

class GaleriaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get galeria_index_url
    assert_response :success
  end

end
