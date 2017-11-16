require 'test_helper'

class TecnicasDeImpresionControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tecnica_de_impresion = tecnicas_de_impresion(:one)
  end

  test "should get index" do
    get tecnicas_de_impresion_url
    assert_response :success
  end

  test "should get new" do
    get new_tecnica_de_impresion_url
    assert_response :success
  end

  test "should create tecnica_de_impresion" do
    assert_difference('TecnicaDeImpresion.count') do
      post tecnicas_de_impresion_url, params: { tecnica_de_impresion: { descripcion: @tecnica_de_impresion.descripcion, estado: @tecnica_de_impresion.estado, tecnica: @tecnica_de_impresion.tecnica } }
    end

    assert_redirected_to tecnica_de_impresion_url(TecnicaDeImpresion.last)
  end

  test "should show tecnica_de_impresion" do
    get tecnica_de_impresion_url(@tecnica_de_impresion)
    assert_response :success
  end

  test "should get edit" do
    get edit_tecnica_de_impresion_url(@tecnica_de_impresion)
    assert_response :success
  end

  test "should update tecnica_de_impresion" do
    patch tecnica_de_impresion_url(@tecnica_de_impresion), params: { tecnica_de_impresion: { descripcion: @tecnica_de_impresion.descripcion, estado: @tecnica_de_impresion.estado, tecnica: @tecnica_de_impresion.tecnica } }
    assert_redirected_to tecnica_de_impresion_url(@tecnica_de_impresion)
  end

  test "should destroy tecnica_de_impresion" do
    assert_difference('TecnicaDeImpresion.count', -1) do
      delete tecnica_de_impresion_url(@tecnica_de_impresion)
    end

    assert_redirected_to tecnicas_de_impresion_url
  end
end
