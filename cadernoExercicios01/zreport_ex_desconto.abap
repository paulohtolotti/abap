*&---------------------------------------------------------------------*
*& Report ZRPTOLOTTI_EX_006
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zrptolotti_ex_006 NO STANDARD PAGE HEADING.

"Parâmetros de entrada e variáveis
PARAMETERS: p_valt(4) TYPE p DECIMALS 2,
            p_qtd     TYPE i.

DATA: v_perdesc    TYPE i,
      v_valfim(4)  TYPE p DECIMALS 2,
      v_valdesc(4) TYPE p DECIMALS 2.

IF p_valt <= '100.00' AND p_qtd = 1.
  v_perdesc = '-15'.
  v_valfim = '0.85' * p_valt.
  v_valdesc = '0.15' * p_valt.
ELSEIF p_valt <= '100.00' AND p_qtd <= 3.
  v_perdesc = '-5'.
  v_valfim = '0.95' * p_valt.
  v_valdesc = '0.05' * p_valt.
ELSEIF p_qtd = 1.
  v_perdesc = '-20'.
  v_valfim = '0.80' * p_valt.
  v_valdesc = '0.20' * p_valt.
ELSE.
  v_perdesc = '-10'.
  v_valfim = '0.90' * p_valt.
  v_valdesc = '0.10' * p_valt.
ENDIF.

WRITE: / 'Report final',
      / 'Valor original: R$ ', p_valt,
      / 'Quantidade de parcelas: ', p_qtd,
      / 'Percentual de desconto ou acréscimo: ', v_perdesc USING EDIT MASK 'V____', ' %',
      / 'Valor do desconto ou acréscimo: R$ ', v_valdesc,
      / 'Valor final: R$ ', v_valfim.