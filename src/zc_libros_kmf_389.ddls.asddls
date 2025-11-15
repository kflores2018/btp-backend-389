@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@Search.searchable: true

define view entity zc_libros_kmf_389 
  as select from ztb_libros_kf           as libros
      inner join ztb_catego_kf           as categor on categor.bi_categ = libros.bi_categ 
 left outer join zc_clnts_libros_kmf_389 as ventas  on ventas.IdLibro = libros.id_libro

association[0..*] to zc_clientes_kmf_389 as _Client on $projection.IdLibro = _Client.IdLibro

{
    key libros.id_libro as IdLibro,
    libros.bi_categ   as Categoria,
    libros.titulo as Titulo,
    libros.autor as Autor, 
    libros.editorial as Editorial,
    libros.idioma as Idioma,
    libros.paginas as Paginas,
    
    @Semantics.amount.currencyCode: 'Moneda'
    libros.precio as Precio,
    libros.moneda as Moneda,
    libros.formato as Formato,
    libros.url as Url,   
    categor.descripcion as Descripcion,    
       
    ventas.Ventas,
    
    @UI.dataPoint.criticality: 'Criticidad'
    case 
        when ventas.Ventas = 0 then 1 
        when ventas.Ventas > 0 and ventas.Ventas <= 10 then 2
        when ventas.Ventas > 10 and ventas.Ventas <= 30 then 3
        else 3         
    end as Criticidad,
   
  
    _Client
}
