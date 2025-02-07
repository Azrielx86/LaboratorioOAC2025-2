# Prácticas de Organización y Arquitectura de Computadoras

```
Facultad de Ingeniería
Semestre 2025-2
```

Tarjeta utilizada: **Intel FPGA DE10-Lite MAX 10 10M50DAF484C7G**

## Práctica 01

Introducción a las herramientas de desarrollo de los FPGAs

### Notas

Para la primera actividad, Questa puede dar el siguiente error al intentar importar el proyecto.

```
# ** Fatal: (vsim-3693) The minimum time resolution limit (1ps) in the Verilog source is smaller than the one chosen for SystemC or VHDL units in the design. Use the vsim -t option to specify the desired resolution.
# FATAL ERROR while loading design
# Error loading design
# End time: 18:53:08 on Feb 06,2025, Elapsed time: 0:00:01
# Errors: 1, Warnings: 0
```

Esto puede corregirse corriendo el proyecto desde la ventana _Transcript_ con el siguiente comando:

```
vsim -voptargs=+acc work.main -t 10ps
```
