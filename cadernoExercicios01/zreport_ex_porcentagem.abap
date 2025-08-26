*&---------------------------------------------------------------------*
*& Report ZRPTOLOTTI_EX_003
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZRPTOLOTTI_EX_003 NO STANDARD PAGE HEADING.

PARAMETERS: p_base(4) TYPE p DECIMALS 2,
            p_percen(4) TYPE p DECIMALS 2.

DATA lv_resul TYPE p DECIMALS 2.
lv_resul = p_base * p_percen / 100.

WRITE: 'Resultado: ', lv_resul.