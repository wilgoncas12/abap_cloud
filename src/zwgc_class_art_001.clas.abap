CLASS zwgc_class_art_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zwgc_class_art_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    data: it_art TYPE STANDARD TABLE OF zwgc_tabla_art.
    it_art = VALUE #(
     ( client = sy-mandt id_art = 1 descr = 'mini colores' descr2 = 'un mini estuche, con mini colores'
    color = 'varios' piezas = 12 stock = 10
    url = 'https://es.pinterest.com/isabeljuberias/imagenes-bonitas/' )
    ( client = sy-mandt id_art = 2 descr = 'mini colores 2' descr2 = 'un mini estuche2, con mini colores2'
    color = 'varios2' piezas = 8 stock = 8
    url = 'https://es.pinterest.com/isabeljuberias/imagenes-bonitas/' )
    ( client = sy-mandt id_art = 3 descr = 'mini colores 3' descr2 = 'un mini estuche3, con mini colores3'
    color = 'varios3' piezas = 2 stock = 10
    url = 'https://es.pinterest.com/isabeljuberias/imagenes-bonitas/' )
    ).

    INSERT zwgc_tabla_art FROM TABLE @it_art.
    if sy-subrc = 0.
        out->write( 'insert succesful' ).
  else.
  out->write( 'insert wrong' ).
  endif.
  ENDMETHOD.
ENDCLASS.
