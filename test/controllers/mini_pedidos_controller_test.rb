require 'test_helper'

class MiniPedidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mini_pedido = mini_pedidos(:one)
  end

  test "should get index" do
    get mini_pedidos_url
    assert_response :success
  end

  test "should get new" do
    get new_mini_pedido_url
    assert_response :success
  end

  test "should create mini_pedido" do
    assert_difference('MiniPedido.count') do
      post mini_pedidos_url, params: { mini_pedido: { cantidad: @mini_pedido.cantidad, nombre: @mini_pedido.nombre, pedido_id: @mini_pedido.pedido_id, tinta_id: @mini_pedido.tinta_id } }
    end

    assert_redirected_to mini_pedido_url(MiniPedido.last)
  end

  test "should show mini_pedido" do
    get mini_pedido_url(@mini_pedido)
    assert_response :success
  end

  test "should get edit" do
    get edit_mini_pedido_url(@mini_pedido)
    assert_response :success
  end

  test "should update mini_pedido" do
    patch mini_pedido_url(@mini_pedido), params: { mini_pedido: { cantidad: @mini_pedido.cantidad, nombre: @mini_pedido.nombre, pedido_id: @mini_pedido.pedido_id, tinta_id: @mini_pedido.tinta_id } }
    assert_redirected_to mini_pedido_url(@mini_pedido)
  end

  test "should destroy mini_pedido" do
    assert_difference('MiniPedido.count', -1) do
      delete mini_pedido_url(@mini_pedido)
    end

    assert_redirected_to mini_pedidos_url
  end
end
