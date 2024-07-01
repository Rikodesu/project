set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {CNN} -view {{CNN_dataflow_ana.wcfg}} -tclbatch {CNN.tcl} -protoinst {CNN.protoinst}
