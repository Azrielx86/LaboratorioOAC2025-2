# Práctica 3

## Creación de la máquina de estados

### Estados

* E0 - 000
* E1 - 001
* E2 - 010
* E3 - 011
* E4 - 100

### Entradas

$\{x, y, z\}$

### Salidas

$\{s_0, s_1, s_2, s_3\}$

### Tabla de verdad

| Edo. Presente | x   | y   | z   | Liga | s5  | s4  | s3  | s2  | s1  | s0  |
| ------------- | --- | --- | --- | ---- | --- | --- | --- | --- | --- | --- |
| 000 E0        | 0   | *   | *   | 001  | 0   | 1   | 0   | 0   | 1   | 1   |
| 000 E0        | 1   | *   | *   | 010  | 1   | 0   | 0   | 1   | 1   | 1   |
| 000 E0        | ... | ... | ... | 000  | 0   | 0   | 0   | 0   | 1   | 1   |
| 001 E1        | *   | *   | *   | 011  | 0   | 0   | 1   | 0   | 0   | 0   |
| 010 E2        | *   | 0   | *   | 100  | 1   | 0   | 0   | 0   | 0   | 1   |
| 010 E2        | *   | 1   | *   | 010  | 1   | 0   | 0   | 0   | 0   | 1   |
| 010 E2        | ... | ... | ... | 100  | 1   | 0   | 0   | 0   | 0   | 1   |
| 011 E3        | *   | *   | 0   | 001  | 1   | 0   | 1   | 0   | 0   | 0   |
| 011 E3        | *   | *   | 1   | 001  | 1   | 0   | 1   | 0   | 1   | 0   |
| 100 E4        | *   | *   | *   | 000  | 0   | 1   | 0   | 0   | 0   | 0   |

