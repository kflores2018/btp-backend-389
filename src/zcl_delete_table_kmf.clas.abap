CLASS zcl_delete_table_kmf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_delete_table_kmf IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DELETE from ztb_clientes_kf.

    IF sy-subrc EQ 0.
       out->write( 'Datos eliminados exitosamente' ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.
