# Práctica 07

## Lógica interna

>[!NOTE]
>Página 68 Diseño de Microprocesadores

## Lógica _Registro de Transformación_

Conectar _y_ en a el __Registro de Transformación__ y al __Registro de interrupción__. En el registro de transformación usar un contador para pasar en cada una de las ramas cada que pasa por el estado. En el caso de esta práctica `EST04` y `EST11`.

## Lógica _Registro de Interrupción_

```vhdl

if VECT = '0' then
  if EST07 then
    D <= EST8;
  elsif EST9 then
    D <= EST10
  endif;
endif;

```