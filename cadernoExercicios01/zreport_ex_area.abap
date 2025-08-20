*&---------------------------------------------------------------------*
*& Report ZRPTOLOTTI_EX_002
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zrptolotti_ex_002 NO STANDARD PAGE HEADING.

*Entrada de dados
PARAMETERS: p_x1(4) TYPE p DECIMALS 2,
            p_x2(4) TYPE p DECIMALS 2.

DATA lv_area(4) TYPE p DECIMALS 2.

lv_area = p_x1 * p_x2.

WRITE: /'Área: ',lv_area, ' metros quadrados'.