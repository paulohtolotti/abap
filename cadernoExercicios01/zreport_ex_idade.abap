*&---------------------------------------------------------------------*
*& Report ZRPTOLOTTI_EX_001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zrptolotti_ex_001 NO STANDARD PAGE HEADING.

* Entrada de dados
PARAMETERS: p_nome TYPE string,
            p_ano  TYPE i.

* Variável de cálculo
DATA: v_idade TYPE i.
v_idade = sy-datum(4) - p_ano.

*Formatação da string
CONDENSE p_nome.

*Saída de dados
WRITE: /'O usuário ', p_nome ,'têm ', v_idade, ' anos'.