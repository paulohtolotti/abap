*&---------------------------------------------------------------------*
*& Report ZRPTOLOTTI_006
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zrptolotti_006 NO STANDARD PAGE HEADING.

* Tela de seleção
PARAMETERS: p_num1  TYPE i,
            p_num2  TYPE i,
            p_soma  RADIOBUTTON GROUP  gr1,
            p_subtr RADIOBUTTON GROUP gr1,
            p_multi RADIOBUTTON GROUP gr1,
            p_div   RADIOBUTTON GROUP  gr1.

DATA v_result TYPE i.

IF p_soma = 'X'.
  v_result = p_num1 + p_num2.
ELSEIF p_subtr = 'X'.
  v_result = p_num1 - p_num2.
ELSEIF p_multi = 'X'.
  v_result = p_num1 * p_num2.
ELSE.
  v_result = p_num1 / p_num2.
ENDIF.

WRITE: /'Resultado: ', v_result.