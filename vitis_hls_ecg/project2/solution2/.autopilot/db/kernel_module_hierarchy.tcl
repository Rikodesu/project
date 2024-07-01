set ModuleHierarchy {[{
"Name" : "CNN","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_CNN_Pipeline_loop_for_channel_pad_0_fu_724","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "loop_for_channel_pad_0","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_CNN_Pipeline_VITIS_LOOP_15_1_loop_for_ap_0_fu_732","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_15_1_loop_for_ap_0","ID" : "4","Type" : "pipeline"},]},
	{"Name" : "grp_CNN_Pipeline_loop_for_3_channel_pad_1_loop_for_channel_pad_1_fu_740","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "loop_for_3_channel_pad_1_loop_for_channel_pad_1","ID" : "6","Type" : "pipeline"},]},
	{"Name" : "grp_CNN_Pipeline_VITIS_LOOP_41_1_loop_for_ap_1_fu_746","ID" : "7","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_41_1_loop_for_ap_1","ID" : "8","Type" : "pipeline"},]},
	{"Name" : "grp_CNN_Pipeline_loop_for_channel_pool_0_loop_for_weight_pool_0_fu_754","ID" : "9","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "loop_for_channel_pool_0_loop_for_weight_pool_0","ID" : "10","Type" : "pipeline"},]},
	{"Name" : "grp_CNN_Pipeline_loop_for_3_channel_pad_2_loop_for_channel_pad_2_fu_760","ID" : "11","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "loop_for_3_channel_pad_2_loop_for_channel_pad_2","ID" : "12","Type" : "pipeline"},]},
	{"Name" : "grp_CNN_Pipeline_VITIS_LOOP_67_1_loop_for_ap_2_fu_766","ID" : "13","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_67_1_loop_for_ap_2","ID" : "14","Type" : "pipeline"},]},
	{"Name" : "grp_CNN_Pipeline_loop_for_3_channel_pad_3_loop_for_channel_pad_3_fu_774","ID" : "15","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "loop_for_3_channel_pad_3_loop_for_channel_pad_3","ID" : "16","Type" : "pipeline"},]},
	{"Name" : "grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780","ID" : "17","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_93_1_loop_for_ap_3","ID" : "18","Type" : "pipeline"},]},
	{"Name" : "grp_CNN_Pipeline_loop_for_channel_pool_1_loop_for_weight_pool_1_fu_788","ID" : "19","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "loop_for_channel_pool_1_loop_for_weight_pool_1","ID" : "20","Type" : "pipeline"},]},
	{"Name" : "grp_CNN_Pipeline_loop_for_3_channel_pad_4_loop_for_channel_pad_4_fu_794","ID" : "21","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "loop_for_3_channel_pad_4_loop_for_channel_pad_4","ID" : "22","Type" : "pipeline"},]},
	{"Name" : "grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800","ID" : "23","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_119_1_loop_for_ap_4","ID" : "24","Type" : "pipeline"},]},
	{"Name" : "grp_CNN_Pipeline_loop_for_3_channel_pad_5_loop_for_channel_pad_5_fu_808","ID" : "25","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "loop_for_3_channel_pad_5_loop_for_channel_pad_5","ID" : "26","Type" : "pipeline"},]},
	{"Name" : "grp_CNN_Pipeline_VITIS_LOOP_145_1_loop_for_ap_5_loop_for_fc_5_loop_for_fa_5_fu_814","ID" : "27","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_145_1_loop_for_ap_5_loop_for_fc_5_loop_for_fa_5","ID" : "28","Type" : "pipeline"},]},
	{"Name" : "grp_CNN_Pipeline_loop_for_channel_pool_2_loop_for_weight_pool_2_fu_822","ID" : "29","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "loop_for_channel_pool_2_loop_for_weight_pool_2","ID" : "30","Type" : "pipeline"},]},
	{"Name" : "grp_CNN_Pipeline_loop_for_3_channel_pad_6_loop_for_channel_pad_6_fu_828","ID" : "31","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "loop_for_3_channel_pad_6_loop_for_channel_pad_6","ID" : "32","Type" : "pipeline"},]},
	{"Name" : "grp_CNN_Pipeline_VITIS_LOOP_171_1_loop_for_ap_6_loop_for_fc_6_loop_for_fa_6_fu_834","ID" : "33","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_171_1_loop_for_ap_6_loop_for_fc_6_loop_for_fa_6","ID" : "34","Type" : "pipeline"},]},
	{"Name" : "grp_CNN_Pipeline_loop_for_3_channel_pad_7_loop_for_channel_pad_7_fu_842","ID" : "35","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "loop_for_3_channel_pad_7_loop_for_channel_pad_7","ID" : "36","Type" : "pipeline"},]},
	{"Name" : "grp_CNN_Pipeline_VITIS_LOOP_197_1_loop_for_ap_7_loop_for_fc_7_loop_for_fa_7_fu_848","ID" : "37","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_197_1_loop_for_ap_7_loop_for_fc_7_loop_for_fa_7","ID" : "38","Type" : "pipeline"},]},
	{"Name" : "grp_CNN_Pipeline_loop_for_channel_pool_3_loop_for_weight_pool_3_fu_856","ID" : "39","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "loop_for_channel_pool_3_loop_for_weight_pool_3","ID" : "40","Type" : "pipeline"},]},
	{"Name" : "grp_CNN_Pipeline_VITIS_LOOP_93_1_fu_871","ID" : "41","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_93_1","ID" : "42","Type" : "pipeline"},]},
	{"Name" : "grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886","ID" : "43","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "loop_for_a_Dense_0","ID" : "44","Type" : "pipeline"},]},
	{"Name" : "grp_CNN_Pipeline_loop_for_a_Dense_1_fu_927","ID" : "45","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "loop_for_a_Dense_1","ID" : "46","Type" : "pipeline"},]},
	{"Name" : "grp_CNN_Pipeline_loop_detect_fu_956","ID" : "47","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "loop_detect","ID" : "48","Type" : "pipeline"},]},]
}]}