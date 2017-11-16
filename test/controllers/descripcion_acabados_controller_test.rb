require 'test_helper'

class DescripcionAcabadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @descripcion_acabado = descripcion_acabados(:one)
  end

  test "should get index" do
    get descripcion_acabados_url
    assert_response :success
  end

  test "should get new" do
    get new_descripcion_acabado_url
    assert_response :success
  end

  test "should create descripcion_acabado" do
    assert_difference('DescripcionAcabado.count') do
      post descripcion_acabados_url, params: { descripcion_acabado: { acabado_id: @descripcion_acabado.acabado_id, detalle_pedido_id: @descripcion_acabado.detalle_pedido_id } }
    end

    assert_redirected_to descripcion_acabado_url(DescripcionAcabado.last)
  end

  test "should show descripcion_acabado" do
    get descripcion_acabado_url(@descripcion_acabado)
    assert_response :success
  end

  test "should get edit" do
    get edit_descripcion_acabado_url(@descripcion_acabado)
    assert_response :success
  end

  test "should update descripcion_acabado" do
    patch descripcion_acabado_url(@descripcion_acabado), params: { descripcion_acabado: { acabado_id: @descripcion_acabado.acabado_id, detalle_pedido_id: @descripcion_acabado.detalle_pedido_id } }
    assert_redirected_to descripcion_acabado_url(@descripcion_acabado)
  end

  test "should destroy descripcion_acabado" do
    assert_difference('DescripcionAcabado.count', -1) do
      delete descripcion_acabado_url(@descripcion_acabado)
    end

    assert_redirected_to descripcion_acabados_url
  end
end
