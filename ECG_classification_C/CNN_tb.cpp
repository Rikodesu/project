#include <conio.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string>
#include <fstream>
#include <iostream>
#include "CNN.h"
#include "Conv.h"
#include "Pool.h"
#include "Dense.h"
#define NumberOfPicture 15009
#define d 1
#pragma warning(disable : 4996)
int main(){
	float OutModel;
	float* Weights = (float*)malloc(11065 * sizeof(float));
	float tmp;
	FILE* Weight = fopen("Float_Weights.txt", "r");
	for (int i = 0; i < 11065; i++){
		fscanf(Weight, "%f", &tmp);
		*(Weights + i)=tmp;
	}
	fclose(Weight);
	////read Input
	float* InModel = (float*)malloc((NumberOfPicture * d * 1 * 320) * sizeof(float));
	FILE* Input = fopen("signals1.txt", "r");
	for (int i = 0; i < NumberOfPicture * d * 1 * 320; i++){
		fscanf(Input, "%f", &tmp);
		*(InModel + i)=tmp;
	}
	fclose(Input);
	//Read Label
	float*Label = (float*)malloc((NumberOfPicture) * sizeof(float));
	FILE* Output = fopen("labels1.txt", "r");
	for (int i = 0; i < NumberOfPicture ; i++)
	{
		fscanf(Output, "%f", &tmp);
		*(Label + i) = tmp;
	}
	fclose(Output);
	float OutArray[NumberOfPicture] = {};
	float Image[d * 320 * 1] = {};
	for (int i = 0; i < NumberOfPicture ; i++)
	{
		int startIndex = i * d * 320 * 1;
		for (int k = 0; k < d * 320 * 1; k++)
		{
			Image[k] = *(InModel + startIndex + k);
		}
		CNN(Image, OutModel, Weights);
		OutArray[i] = OutModel;
	}
	float countTrue = 0;
	for (int i = 0; i < NumberOfPicture; i++)
	{
		int labelValue = *(Label + i);
		if (labelValue == OutArray[i])
		{
			countTrue = countTrue + 1;
		}
	}
	float accuracy = (float)((countTrue / NumberOfPicture) * 100);
	std::cout << "accuracy of Model: " << accuracy << "%\n";
	//std::cout << "Result: " <<  OutModel <<  "\n";
	return 0;
}
