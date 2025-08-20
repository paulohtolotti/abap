*&---------------------------------------------------------------------*
*& Report ZRPTOLOTTI_005
*&---------------------------------------------------------------------*
*&  OBJETIVO:       Utilizar parameter para entrada de dados
*&  DATA:           20/08/2025
*&---------------------------------------------------------------------*
REPORT zrptolotti_005 NO STANDARD PAGE HEADING.

*Declarando parameter
PARAMETER p_data TYPE d.
PARAMETERS: p_nome TYPE string,
            p_hora TYPE t.

* Print dos dados.
WRITE: /'Nome: ', p_nome,
       /'Data: ', p_data DD/MM/YY,
       /'Hora: ', p_hora ENVIRONMENT TIME FORMAT.