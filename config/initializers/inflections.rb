# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
 ActiveSupport::Inflector.inflections(:en) do |inflect|

   inflect.irregular 'malla', 'mallas'
   inflect.irregular 'producto', 'productos'
   inflect.irregular 'tipo_de_unidad', 'tipo_de_unidades'
   inflect.irregular 'cantidad', 'cantidades'
   inflect.irregular 'tinta', 'tintas'
   inflect.irregular 'formula_tinta', 'formula_tintas'
   inflect.irregular 'descripcion', 'descripciones'
   inflect.irregular 'codigo', 'codigos'
   inflect.irregular 'pantone', 'pantones'
   inflect.irregular 'tecnica_de_impresion', 'tecnicas_de_impresion'
   inflect.irregular 'tecnica', 'tecnicas'
   inflect.irregular 'estado', 'estados'
   inflect.irregular 'pedido', 'pedidos'
   inflect.irregular 'contacto', 'contactos'
   inflect.irregular 'producto', 'productos'
   inflect.irregular 'tipo_de_trabajo', 'tipos_de_trabajo'
   inflect.irregular 'fecha_entrega', 'fechas_de_entregas'
   inflect.irregular 'fecha_de_pedido', 'fecha_de_pedidos'
   inflect.irregular 'numero_cotizacion', 'numeros_de_cotizaciones'
   inflect.irregular 'forma_de_pago', 'formas_de_pago'
   inflect.irregular 'arte', 'artes'
   inflect.irregular 'observacion', 'observaciones'
   inflect.irregular 'estado_pedido', 'estados_pedido'
   inflect.irregular 'detalle_pedido', 'detalles_pedido'
   inflect.irregular 'sustrato', 'sutratos'
   inflect.irregular 'codigo', 'codigos'
   inflect.irregular 'acabado', 'acabados'
   inflect.irregular 'cantidad_tinta', 'cantidades_tintas'
   inflect.irregular 'total', 'totales'

   inflect.irregular 'rol', 'roles'
  inflect.irregular 'cargo', 'cargos'
  inflect.irregular 'estado', 'estados'
  inflect.irregular 'nombre', 'nombres'
  inflect.irregular 'usuario', 'usuarios'
  inflect.irregular 'correo', 'correos'
  inflect.irregular 'user', 'users'
  inflect.irregular 'celular', 'celular'
  inflect.irregular 'cliente', 'clientes'
  inflect.irregular 'nit', 'nits'
  inflect.irregular 'nombre_contacto', 'nombres_contactos'
  inflect.irregular 'telefono', 'telefonos'
  inflect.irregular 'correo', 'correos'
  inflect.irregular 'direccion', 'direcciones'
  inflect.irregular 'contacto', 'contactos'
  inflect.irregular 'mini_pedido', 'mini_pedidos'
  inflect.irregular 'tamano', 'tamanos'

  inflect.irregular 'numero_pedido', 'numero_pedidos'
  inflect.irregular 'linea_de_impresion', 'lineas_de_impresiones'
  inflect.irregular 'tipo_de_linea', 'tipos_de_lineas'
  inflect.irregular 'tiempos_de_entrega', 'tiempos_de_entregas'
  inflect.irregular 'costo', 'costos'
  inflect.irregular 'fecha_compromiso', 'fechas_compromiso'
  inflect.irregular 'total_fechas_decompromiso','totales_fechas_decompromiso'

 inflect.irregular 'factura','facturas'
 inflect.irregular 'despacho', 'despachos'
 inflect.irregular 'lugar_a_factura','lugares_a_facturar'
 inflect.irregular 'recibe','reciben'

end


# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
