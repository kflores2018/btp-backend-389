@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categorias'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType: {
    serviceQuality: #B,
    sizeCategory: #S,
    dataClass: #MASTER
}
define view entity zc_categoria_kmf_389 as select from ztb_catego_kf
{
    key bi_categ as Categoria,
        descripcion as Descripcion
}
