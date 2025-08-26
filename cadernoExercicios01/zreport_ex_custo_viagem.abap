*&---------------------------------------------------------------------*
*& Report ZRPTOLOTTI_EX_004
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zrptolotti_ex_004 NO STANDARD PAGE HEADING.

"Parâmetros de entrada e variáveis
PARAMETERS: p_dist(4)   TYPE p DECIMALS 2, "Distância percorrida
            P_valc(4)  TYPE p DECIMALS 2, "Valor do combustível
            p_kmplt(4) TYPE p DECIMALS 2. "Km rodados por litro.

DATA: lv_litros(4) TYPE p DECIMALS 2,
      lv_custo(4)  TYPE p DECIMALS 2.

"Processamento
TRY.
  lv_litros = p_dist / p_kmplt  .
CATCH CX_SY_ZERODIVIDE.
  lv_litros = 0.
ENDTRY.

lv_custo = lv_litros * p_valc.

WRITE: / 'Report da viagem',
       / 'Quantidade de combustível gasto (LITROS): ', lv_litros,
       / 'Custo total da viagem foi de R$: ', lv_custo.