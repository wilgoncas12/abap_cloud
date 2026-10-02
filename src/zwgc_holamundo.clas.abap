CLASS zwgc_holamundo DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zwgc_holamundo IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  out->write( 'hola mundo' ).

  ENDMETHOD.
ENDCLASS.
