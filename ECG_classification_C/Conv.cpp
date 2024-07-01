void Padding_Conv1D_0(float input_Pad_Conv[320], float output_Pad_Conv[324]){
	loop_for_3_channel_pad_0:
	for (int c = 0; c < 1; c++){
		loop_for_channel_pad_0:
		for (int n = 0; n < 324; n++){
			if (n < 2 || n >= 322) output_Pad_Conv[324 * c + n]=0; else output_Pad_Conv[324 * c + n] = input_Pad_Conv[320 * c + n - 2];
		}
	}
}
void Conv1D_0(float Input_Conv[324],float Output_Conv[1280], float bias[4], float kernel[20]){
	loop_for_channel_0:
	int stride = 1;
	for (int n = 0; n < 4; n++){
		loop_for_ap_0:
		for (int y = 0; y < 320; y++){
			float s = 0;
			loop_for_fc_0:
			for (int k = 0; k < 1; k++){
				loop_for_fa_0:
				for (int j = 0; j < 5; j++){
					s=s+(kernel[1*5*n+5*k+j])*(Input_Conv[324*k+j+y*stride]);}
			}
			if ((s+bias[n])<0) Output_Conv[320*n+y]=0; else Output_Conv[320*n+y]=s+bias[n];
		}
	}
}
void Padding_Conv1D_1(float input_Pad_Conv[1280], float output_Pad_Conv[1296]){
	loop_for_3_channel_pad_1:
	for (int c = 0; c < 4; c++){
		loop_for_channel_pad_1:
		for (int n = 0; n < 324; n++){
			if (n < 2 || n >= 322) output_Pad_Conv[324 * c + n]=0; else output_Pad_Conv[324 * c + n] = input_Pad_Conv[320 * c + n - 2];
		}
	}
}
void Conv1D_1(float Input_Conv[1296],float Output_Conv[1280], float bias[4], float kernel[80]){
	loop_for_channel_1:
	int stride = 1;
	for (int n = 0; n < 4; n++){
		loop_for_ap_1:
		for (int y = 0; y < 320; y++){
			float s = 0;
			loop_for_fc_1:
			for (int k = 0; k < 4; k++){
				loop_for_fa_1:
				for (int j = 0; j < 5; j++){
					s=s+(kernel[4*5*n+5*k+j])*(Input_Conv[324*k+j+y*stride]);}
			}
			if ((s+bias[n])<0) Output_Conv[320*n+y]=0; else Output_Conv[320*n+y]=s+bias[n];
		}
	}
}
void Padding_Conv1D_2(float input_Pad_Conv[640], float output_Pad_Conv[656]){
	loop_for_3_channel_pad_2:
	for (int c = 0; c < 4; c++){
		loop_for_channel_pad_2:
		for (int n = 0; n < 164; n++){
			if (n < 2 || n >= 162) output_Pad_Conv[164 * c + n]=0; else output_Pad_Conv[164 * c + n] = input_Pad_Conv[160 * c + n - 2];
		}
	}
}
void Conv1D_2(float Input_Conv[656],float Output_Conv[1280], float bias[8], float kernel[160]){
	loop_for_channel_2:
	int stride = 1;
	for (int n = 0; n < 8; n++){
		loop_for_ap_2:
		for (int y = 0; y < 160; y++){
			float s = 0;
			loop_for_fc_2:
			for (int k = 0; k < 4; k++){
				loop_for_fa_2:
				for (int j = 0; j < 5; j++){
					s=s+(kernel[4*5*n+5*k+j])*(Input_Conv[164*k+j+y*stride]);}
			}
			if ((s+bias[n])<0) Output_Conv[160*n+y]=0; else Output_Conv[160*n+y]=s+bias[n];
		}
	}
}
void Padding_Conv1D_3(float input_Pad_Conv[1280], float output_Pad_Conv[1312]){
	loop_for_3_channel_pad_3:
	for (int c = 0; c < 8; c++){
		loop_for_channel_pad_3:
		for (int n = 0; n < 164; n++){
			if (n < 2 || n >= 162) output_Pad_Conv[164 * c + n]=0; else output_Pad_Conv[164 * c + n] = input_Pad_Conv[160 * c + n - 2];
		}
	}
}
void Conv1D_3(float Input_Conv[1312],float Output_Conv[1280], float bias[8], float kernel[320]){
	loop_for_channel_3:
	int stride = 1;
	for (int n = 0; n < 8; n++){
		loop_for_ap_3:
		for (int y = 0; y < 160; y++){
			float s = 0;
			loop_for_fc_3:
			for (int k = 0; k < 8; k++){
				loop_for_fa_3:
				for (int j = 0; j < 5; j++){
					s=s+(kernel[8*5*n+5*k+j])*(Input_Conv[164*k+j+y*stride]);}
			}
			if ((s+bias[n])<0) Output_Conv[160*n+y]=0; else Output_Conv[160*n+y]=s+bias[n];
		}
	}
}
void Padding_Conv1D_4(float input_Pad_Conv[640], float output_Pad_Conv[672]){
	loop_for_3_channel_pad_4:
	for (int c = 0; c < 8; c++){
		loop_for_channel_pad_4:
		for (int n = 0; n < 84; n++){
			if (n < 2 || n >= 82) output_Pad_Conv[84 * c + n]=0; else output_Pad_Conv[84 * c + n] = input_Pad_Conv[80 * c + n - 2];
		}
	}
}
void Conv1D_4(float Input_Conv[672],float Output_Conv[1280], float bias[16], float kernel[640]){
	loop_for_channel_4:
	int stride = 1;
	for (int n = 0; n < 16; n++){
		loop_for_ap_4:
		for (int y = 0; y < 80; y++){
			float s = 0;
			loop_for_fc_4:
			for (int k = 0; k < 8; k++){
				loop_for_fa_4:
				for (int j = 0; j < 5; j++){
					s=s+(kernel[8*5*n+5*k+j])*(Input_Conv[84*k+j+y*stride]);}
			}
			if ((s+bias[n])<0) Output_Conv[80*n+y]=0; else Output_Conv[80*n+y]=s+bias[n];
		}
	}
}
void Padding_Conv1D_5(float input_Pad_Conv[1280], float output_Pad_Conv[1344]){
	loop_for_3_channel_pad_5:
	for (int c = 0; c < 16; c++){
		loop_for_channel_pad_5:
		for (int n = 0; n < 84; n++){
			if (n < 2 || n >= 82) output_Pad_Conv[84 * c + n]=0; else output_Pad_Conv[84 * c + n] = input_Pad_Conv[80 * c + n - 2];
		}
	}
}
void Conv1D_5(float Input_Conv[1344],float Output_Conv[1280], float bias[16], float kernel[1280]){
	loop_for_channel_5:
	int stride = 1;
	for (int n = 0; n < 16; n++){
		loop_for_ap_5:
		for (int y = 0; y < 80; y++){
			float s = 0;
			loop_for_fc_5:
			for (int k = 0; k < 16; k++){
				loop_for_fa_5:
				for (int j = 0; j < 5; j++){
					s=s+(kernel[16*5*n+5*k+j])*(Input_Conv[84*k+j+y*stride]);}
			}
			if ((s+bias[n])<0) Output_Conv[80*n+y]=0; else Output_Conv[80*n+y]=s+bias[n];
		}
	}
}
void Padding_Conv1D_6(float input_Pad_Conv[640], float output_Pad_Conv[704]){
	loop_for_3_channel_pad_6:
	for (int c = 0; c < 16; c++){
		loop_for_channel_pad_6:
		for (int n = 0; n < 44; n++){
			if (n < 2 || n >= 42) output_Pad_Conv[44 * c + n]=0; else output_Pad_Conv[44 * c + n] = input_Pad_Conv[40 * c + n - 2];
		}
	}
}
void Conv1D_6(float Input_Conv[704],float Output_Conv[1280], float bias[32], float kernel[2560]){
	loop_for_channel_6:
	int stride = 1;
	for (int n = 0; n < 32; n++){
		loop_for_ap_6:
		for (int y = 0; y < 40; y++){
			float s = 0;
			loop_for_fc_6:
			for (int k = 0; k < 16; k++){
				loop_for_fa_6:
				for (int j = 0; j < 5; j++){
					s=s+(kernel[16*5*n+5*k+j])*(Input_Conv[44*k+j+y*stride]);}
			}
			if ((s+bias[n])<0) Output_Conv[40*n+y]=0; else Output_Conv[40*n+y]=s+bias[n];
		}
	}
}
void Padding_Conv1D_7(float input_Pad_Conv[1280], float output_Pad_Conv[1408]){
	loop_for_3_channel_pad_7:
	for (int c = 0; c < 32; c++){
		loop_for_channel_pad_7:
		for (int n = 0; n < 44; n++){
			if (n < 2 || n >= 42) output_Pad_Conv[44 * c + n]=0; else output_Pad_Conv[44 * c + n] = input_Pad_Conv[40 * c + n - 2];
		}
	}
}
void Conv1D_7(float Input_Conv[1408],float Output_Conv[1280], float bias[32], float kernel[5120]){
	loop_for_channel_7:
	int stride = 1;
	for (int n = 0; n < 32; n++){
		loop_for_ap_7:
		for (int y = 0; y < 40; y++){
			float s = 0;
			loop_for_fc_7:
			for (int k = 0; k < 32; k++){
				loop_for_fa_7:
				for (int j = 0; j < 5; j++){
					s=s+(kernel[32*5*n+5*k+j])*(Input_Conv[44*k+j+y*stride]);}
			}
			if ((s+bias[n])<0) Output_Conv[40*n+y]=0; else Output_Conv[40*n+y]=s+bias[n];
		}
	}
}
