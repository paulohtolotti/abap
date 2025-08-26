*&---------------------------------------------------------------------*
*& Report ZRPTOLOTTI_EX_005
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zrptolotti_ex_005 NO STANDARD PAGE HEADING.

PARAMETERS: p_height(4) TYPE p DECIMALS 2,
            p_weight(4) TYPE p DECIMALS 2.

DATA lv_imc(4) TYPE p DECIMALS 2.
TRY.
    lv_imc = p_weight / ( p_height * p_height ).
  CATCH cx_sy_zerodivide.
    WRITE 'Altura inválida'.
    STOP.
ENDTRY.

WRITE:   / 'IMC = ' COLOR 4, lv_imc COLOR 4,
        / 'A situação é: '.

IF lv_imc < 17.
  WRITE / 'Muito abaixo do peso'.
ELSEIF lv_imc < '18.5' .
  WRITE / 'Baixo do peso'.
ELSEIF lv_imc < 25.
  WRITE / 'Peso Normal'.
ELSEIF lv_imc < '30.0'.
  WRITE / 'Acima do peso'.
ELSEIF lv_imc < '35.0'.
  WRITE / 'Obseidade I'.
ELSEIF lv_IMC < '40.0'.
  WRITE / 'Obesidade II (severa)'.
ELSE.
  WRITE / 'Obesidade III (severa)'.
ENDIF.