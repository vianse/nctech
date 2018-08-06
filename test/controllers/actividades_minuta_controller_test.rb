require 'test_helper'

class ActividadesMinutaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actividades_minutum = actividades_minuta(:one)
  end

  test "should get index" do
    get actividades_minuta_url
    assert_response :success
  end

  test "should get new" do
    get new_actividades_minutum_url
    assert_response :success
  end

  test "should create actividades_minutum" do
    assert_difference('ActividadesMinutum.count') do
      post actividades_minuta_url, params: { actividades_minutum: { actividad: @actividades_minutum.actividad, asunto: @actividades_minutum.asunto, coResponsable: @actividades_minutum.coResponsable, fechaCompromiso: @actividades_minutum.fechaCompromiso, minutaToken: @actividades_minutum.minutaToken, responsable: @actividades_minutum.responsable, userid: @actividades_minutum.userid } }
    end

    assert_redirected_to actividades_minutum_url(ActividadesMinutum.last)
  end

  test "should show actividades_minutum" do
    get actividades_minutum_url(@actividades_minutum)
    assert_response :success
  end

  test "should get edit" do
    get edit_actividades_minutum_url(@actividades_minutum)
    assert_response :success
  end

  test "should update actividades_minutum" do
    patch actividades_minutum_url(@actividades_minutum), params: { actividades_minutum: { actividad: @actividades_minutum.actividad, asunto: @actividades_minutum.asunto, coResponsable: @actividades_minutum.coResponsable, fechaCompromiso: @actividades_minutum.fechaCompromiso, minutaToken: @actividades_minutum.minutaToken, responsable: @actividades_minutum.responsable, userid: @actividades_minutum.userid } }
    assert_redirected_to actividades_minutum_url(@actividades_minutum)
  end

  test "should destroy actividades_minutum" do
    assert_difference('ActividadesMinutum.count', -1) do
      delete actividades_minutum_url(@actividades_minutum)
    end

    assert_redirected_to actividades_minuta_url
  end
end
