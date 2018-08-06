require 'test_helper'

class ParticipantesMinutaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @participantes_minutum = participantes_minuta(:one)
  end

  test "should get index" do
    get participantes_minuta_url
    assert_response :success
  end

  test "should get new" do
    get new_participantes_minutum_url
    assert_response :success
  end

  test "should create participantes_minutum" do
    assert_difference('ParticipantesMinutum.count') do
      post participantes_minuta_url, params: { participantes_minutum: { asistencia: @participantes_minutum.asistencia, minutaToken: @participantes_minutum.minutaToken, nombre: @participantes_minutum.nombre, puesto: @participantes_minutum.puesto, userid: @participantes_minutum.userid } }
    end

    assert_redirected_to participantes_minutum_url(ParticipantesMinutum.last)
  end

  test "should show participantes_minutum" do
    get participantes_minutum_url(@participantes_minutum)
    assert_response :success
  end

  test "should get edit" do
    get edit_participantes_minutum_url(@participantes_minutum)
    assert_response :success
  end

  test "should update participantes_minutum" do
    patch participantes_minutum_url(@participantes_minutum), params: { participantes_minutum: { asistencia: @participantes_minutum.asistencia, minutaToken: @participantes_minutum.minutaToken, nombre: @participantes_minutum.nombre, puesto: @participantes_minutum.puesto, userid: @participantes_minutum.userid } }
    assert_redirected_to participantes_minutum_url(@participantes_minutum)
  end

  test "should destroy participantes_minutum" do
    assert_difference('ParticipantesMinutum.count', -1) do
      delete participantes_minutum_url(@participantes_minutum)
    end

    assert_redirected_to participantes_minuta_url
  end
end
