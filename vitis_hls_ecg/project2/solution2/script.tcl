############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project project2
set_top CNN
add_files CNN.cpp
add_files Conv.cpp
add_files Dense.cpp
add_files Pool.cpp
add_files -tb CNN_tb.cpp -cflags "-Wno-unknown-pragmas"
add_files -tb Float_Weights.txt -cflags "-Wno-unknown-pragmas"
add_files -tb labels1.txt -cflags "-Wno-unknown-pragmas"
add_files -tb labels2.txt -cflags "-Wno-unknown-pragmas"
add_files -tb signals1.txt -cflags "-Wno-unknown-pragmas"
add_files -tb signals2.txt -cflags "-Wno-unknown-pragmas"
open_solution "solution2" -flow_target vivado
set_part {xck26-sfvc784-2LV-c}
create_clock -period 200MHz -name default
config_cosim -tool xsim -trace_level port -wave_debug
config_export -flow impl -format syn_dcp -output F:/Ky2nam3/do_an_1/code/doan1/project2 -rtl verilog -vivado_clock 200MHz
source "./project2/solution2/directives.tcl"
csim_design
csynth_design
cosim_design -wave_debug -trace_level port -tool xsim
export_design -flow impl -rtl verilog -format syn_dcp -output F:/Ky2nam3/do_an_1/code/doan1/project2
