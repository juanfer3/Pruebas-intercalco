require 'test_helper'

class DetallesPedidoControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detalle_pedido = detalles_pedido(:one)
  end

  test "should get index" do
    get detalles_pedido_url
    assert_response :success
  end

  test "should get new" do
    get new_detalle_pedido_url
    assert_response :success
  end

  test "should create detalle_pedido" do
    assert_difference('DetallePedido.count') do
      post detalles_pedido_url, params: { detalle_pedido: { cantidad: @detalle_pedido.cantidad, pedido_id: @detalle_pedido.pedido_id, precio: @detalle_pedido.precio, sustrato: @detalle_pedido.sustrato, tecnica_de_impresion_id: @detalle_pedido.tecnica_de_impresion_id, total: @detalle_pedido.total } }
    end

    assert_redirected_to detalle_pedido_url(DetallePedido.last)
  end

  test "should show detalle_pedido" do
    get detalle_pedido_url(@detalle_pedido)
    assert_response :success
  end

  test "should get edit" do
    get edit_detalle_pedido_url(@detalle_pedido)
    assert_response :success
  end

  test "should update detalle_pedido" do
    patch detalle_pedido_url(@detalle_pedido), params: { detalle_pedido: { cantidad: @detalle_pedido.cantidad, pedido_id: @detalle_pedido.pedido_id, precio: @detalle_pedido.precio, sustrato: @detalle_pedido.sustrato, tecnica_de_impresion_id: @detalle_pedido.tecnica_de_impresion_id, total: @detalle_pedido.total } }
    assert_redirected_to detalle_pedido_url(@detalle_pedido)
  end

  test "should destroy detalle_pedido" do
    assert_difference('DetallePedido.count', -1) do
      delete detalle_pedido_url(@detalle_pedido)
    end

    assert_redirected_to detalles_pedido_url
  end
end
