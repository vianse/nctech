require 'test_helper'

class ObjetivoMinutaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @objetivo_minutum = objetivo_minuta(:one)
  end

  test "should get index" do
    get objetivo_minuta_url
    assert_response :success
  end

  test "should get new" do
    get new_objetivo_minutum_url
    assert_response :success
  end

  test "should create objetivo_minutum" do
    assert_difference('ObjetivoMinutum.count') do
      post objetivo_minuta_url, params: { objetivo_minutum: { fechaRevision: @objetivo_minutum.fechaRevision, minutaToken: @objetivo_minutum.minutaToken, objetivo: @objetivo_minutum.objetivo, userid: @objetivo_minutum.userid } }
    end

    assert_redirected_to objetivo_minutum_url(ObjetivoMinutum.last)
  end

  test "should show objetivo_minutum" do
    get objetivo_minutum_url(@objetivo_minutum)
    assert_response :success
  end

  test "should get edit" do
    get edit_objetivo_minutum_url(@objetivo_minutum)
    assert_response :success
  end

  test "should update objetivo_minutum" do
    patch objetivo_minutum_url(@objetivo_minutum), params: { objetivo_minutum: { fechaRevision: @objetivo_minutum.fechaRevision, minutaToken: @objetivo_minutum.minutaToken, objetivo: @objetivo_minutum.objetivo, userid: @objetivo_minutum.userid } }
    assert_redirected_to objetivo_minutum_url(@objetivo_minutum)
  end

  test "should destroy objetivo_minutum" do
    assert_difference('ObjetivoMinutum.count', -1) do
      delete objetivo_minutum_url(@objetivo_minutum)
    end

    assert_redirected_to objetivo_minuta_url
  end
end
