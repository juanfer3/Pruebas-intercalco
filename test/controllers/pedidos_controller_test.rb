require 'test_helper'

class PedidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pedido = pedidos(:one)
  end

  test "should get index" do
    get pedidos_url
    assert_response :success
  end

  test "should get new" do
    get new_pedido_url
    assert_response :success
  end

  test "should create pedido" do
    assert_difference('Pedido.count') do
      post pedidos_url, params: { pedido: { arte: @pedido.arte, contacto_id: @pedido.contacto_id, despacho_id: @pedido.despacho_id, estado: @pedido.estado, estado_pedido: @pedido.estado_pedido, factura_id: @pedido.factura_id, fecha_de_pedido: @pedido.fecha_de_pedido, fecha_entrega: @pedido.fecha_entrega, forma_de_pago: @pedido.forma_de_pago, linea_de_impresion_id: @pedido.linea_de_impresion_id, numero_cotizacion: @pedido.numero_cotizacion, numero_pedido: @pedido.numero_pedido, observaciones: @pedido.observaciones, producto: @pedido.producto, tipo_de_trabajo: @pedido.tipo_de_trabajo, total_fechas_decompromiso: @pedido.total_fechas_decompromiso } }
    end

    assert_redirected_to pedido_url(Pedido.last)
  end

  test "should show pedido" do
    get pedido_url(@pedido)
    assert_response :success
  end

  test "should get edit" do
    get edit_pedido_url(@pedido)
    assert_response :success
  end

  test "should update pedido" do
    patch pedido_url(@pedido), params: { pedido: { arte: @pedido.arte, contacto_id: @pedido.contacto_id, despacho_id: @pedido.despacho_id, estado: @pedido.estado, estado_pedido: @pedido.estado_pedido, factura_id: @pedido.factura_id, fecha_de_pedido: @pedido.fecha_de_pedido, fecha_entrega: @pedido.fecha_entrega, forma_de_pago: @pedido.forma_de_pago, linea_de_impresion_id: @pedido.linea_de_impresion_id, numero_cotizacion: @pedido.numero_cotizacion, numero_pedido: @pedido.numero_pedido, observaciones: @pedido.observaciones, producto: @pedido.producto, tipo_de_trabajo: @pedido.tipo_de_trabajo, total_fechas_decompromiso: @pedido.total_fechas_decompromiso } }
    assert_redirected_to pedido_url(@pedido)
  end

  test "should destroy pedido" do
    assert_difference('Pedido.count', -1) do
      delete pedido_url(@pedido)
    end

    assert_redirected_to pedidos_url
  end
end
