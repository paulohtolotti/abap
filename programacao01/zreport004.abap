*&---------------------------------------------------------------------*
*& Report ZRPTOLOTTI_004
*&---------------------------------------------------------------------*
*& OBJETIVO:        Treinar constantes e variáveis
*& DATA:            20/08/25
*&---------------------------------------------------------------------*
REPORT ZRPTOLOTTI_004 NO STANDARD PAGE HEADING.

* Declaração de variáveis
DATA: v_data TYPE D,
      v_hora TYPE T,
      v_nome  TYPE STRING.

*Declaração de constante
CONSTANTS c_ano(4) TYPE C VALUE '1986'.

*Atribuindo valores
v_data = '19990914'. "Decimal atribuídos usando string
v_hora = '125513'.
v_nome = 'Paulinho Silva'.

*Print de valores
WRITE:/ 'Nome: ' COLOR 5, v_nome COLOR 5,
      /'Data: ' COLOR 5, v_data DD/MM/YYYY COLOR 5,
      /'Hora: ' COLOR 5, v_hora ENVIRONMENT TIME FORMAT COLOR 5,
      /'Ano:  ' COLOR 5, c_ano COLOR 5.