
set PATH=
call F:/Vivado/Vivado/2023.2/bin/xelab xil_defaultlib.apatb_CNN_top glbl -Oenable_linking_all_libraries  -prj CNN.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  -L floating_point_v7_1_16 -L floating_point_v7_0_21 --lib "ieee_proposed=./ieee_proposed" -s CNN -debug all
call F:/Vivado/Vivado/2023.2/bin/xsim --noieeewarnings CNN -tclbatch CNN.tcl -gui -view CNN_dataflow_ana.wcfg -protoinst CNN.protoinst

