# Install Guide

## Icarus Verilog & GTKWave

1. **Icarus Verilog**  
   - Installation (Ubuntu):  
     ```
     sudo apt-get update
     sudo apt-get install iverilog
     ```
2. **GTKWave**  
   - Installation (Ubuntu):  
     ```
     sudo apt-get install gtkwave
     ```
3. **Running Simulation**  
   - iverilog -o tb-gates tb day01-structural-gates/*.v
     vvp tb_gates_tb
     gtkwave waveform.vcd
