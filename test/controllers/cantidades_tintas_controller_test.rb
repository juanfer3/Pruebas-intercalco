require 'test_helper'

class CantidadesTintasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cantidad_tinta = cantidades_tintas(:one)
  end

  test "should get index" do
    get cantidades_tintas_url
    assert_response :success
  end

  test "should get new" do
    get new_cantidad_tinta_url
    assert_response :success
  end

  test "should create cantidad_tinta" do
    assert_difference('CantidadTinta.count') do
      post cantidades_tintas_url, params: { cantidad_tinta: { detalle_pedido_id: @cantidad_tinta.detalle_pedido_id, tinta_id: @cantidad_tinta.tinta_id } }
    end

    assert_redirected_to cantidad_tinta_url(CantidadTinta.last)
  end

  test "should show cantidad_tinta" do
    get cantidad_tinta_url(@cantidad_tinta)
    assert_response :success
  end

  test "should get edit" do
    get edit_cantidad_tinta_url(@cantidad_tinta)
    assert_response :success
  end

  test "should update cantidad_tinta" do
    patch cantidad_tinta_url(@cantidad_tinta), params: { cantidad_tinta: { detalle_pedido_id: @cantidad_tinta.detalle_pedido_id, tinta_id: @cantidad_tinta.tinta_id } }
    assert_redirected_to cantidad_tinta_url(@cantidad_tinta)
  end

  test "should destroy cantidad_tinta" do
    assert_difference('CantidadTinta.count', -1) do
      delete cantidad_tinta_url(@cantidad_tinta)
    end

    assert_redirected_to cantidades_tintas_url
  end
end
