*&---------------------------------------------------------------------*
*& Report ZRPTOLOTTI_003
*&---------------------------------------------------------------------*
*&  OBJETIVO:            MÉTODOS DE STRINGS
*&  DATA:                15/08/2025
*&---------------------------------------------------------------------*
REPORT ZRPTOLOTTI_003 NO STANDARD PAGE HEADING.

WRITE: / 'First Line'.
SKIP 3.
WRITE: 'Fifth Line'.
WRITE: / 'GREEN BACKGROUND' COLOR 5.
WRITE: / 'GREEN TEXT' COLOR 5 INVERSE.
ULINE.
FORMAT COLOR 4.
WRITE: / 'Another text with color 01 (gray blue)',
'Reseting the color...'.
FORMAT RESET.