@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType: {
    serviceQuality: #B,
    sizeCategory: #S,
    dataClass: #MASTER
}
@Metadata.allowExtensions: true
define view entity zc_clientes_kmf_389 as select from ztb_clientes_kf as clientes
               inner join ztb_clnts_lib_kf as relclib on relclib.id_cliente = clientes.id_cliente
{
    key relclib.id_libro as IdLibro,
    key clientes.id_cliente as IdCliente,
    key clientes.tipo_acceso as TipoAcceso,
    clientes.nombre as Nombre,
    clientes.apellidos as Apellidos,
    clientes.email as Email,
    clientes.url as Url
}
