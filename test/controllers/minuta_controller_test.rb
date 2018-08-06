require 'test_helper'

class MinutaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @minutum = minuta(:one)
  end

  test "should get index" do
    get minuta_url
    assert_response :success
  end

  test "should get new" do
    get new_minutum_url
    assert_response :success
  end

  test "should create minutum" do
    assert_difference('Minutum.count') do
      post minuta_url, params: { minutum: { fecha: @minutum.fecha, fechaProximaReunion: @minutum.fechaProximaReunion, final: @minutum.final, fw: @minutum.fw, inicio: @minutum.inicio, nombre: @minutum.nombre, organizador: @minutum.organizador, secretario: @minutum.secretario, token: @minutum.token, userId: @minutum.userId } }
    end

    assert_redirected_to minutum_url(Minutum.last)
  end

  test "should show minutum" do
    get minutum_url(@minutum)
    assert_response :success
  end

  test "should get edit" do
    get edit_minutum_url(@minutum)
    assert_response :success
  end

  test "should update minutum" do
    patch minutum_url(@minutum), params: { minutum: { fecha: @minutum.fecha, fechaProximaReunion: @minutum.fechaProximaReunion, final: @minutum.final, fw: @minutum.fw, inicio: @minutum.inicio, nombre: @minutum.nombre, organizador: @minutum.organizador, secretario: @minutum.secretario, token: @minutum.token, userId: @minutum.userId } }
    assert_redirected_to minutum_url(@minutum)
  end

  test "should destroy minutum" do
    assert_difference('Minutum.count', -1) do
      delete minutum_url(@minutum)
    end

    assert_redirected_to minuta_url
  end
end
