// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;
	float floatGLOB_1 = 51.870598;
	float floatGLOB_2 = 161.5981;
	float floatGLOB_3 = 15.0;
	float floatGLOB_4 = 51.9771;
	float floatGLOB_5 = 164.281;
	float floatGLOB_6 = 15.0;
	float floatGLOB_7 = 52.215;
	float floatGLOB_8 = 167.57932;
	float floatGLOB_9 = 15.0;
	float floatGLOB_10 = 0.0;
	int intGLOB_28 = 201;
	int intGLOB_29 = 200;

// Prototypes
void sub2();
void sub1(int intParam1);

void sub2() {
	object oK39_plc_base1 = GetObjectByTag("k39_plc_base1", 0);
	object oK39_plc_base2 = GetObjectByTag("k39_plc_base2", 0);
	object oK39_plc_base3 = GetObjectByTag("k39_plc_base3", 0);
	object oK39_plc_lower1 = GetObjectByTag("k39_plc_lower1", 0);
	object oK39_plc_lower2 = GetObjectByTag("k39_plc_lower2", 0);
	object oK39_plc_lower3 = GetObjectByTag("k39_plc_lower3", 0);
	object oK39_plc_upper1 = GetObjectByTag("k39_plc_upper1", 0);
	object oK39_plc_upper2 = GetObjectByTag("k39_plc_upper2", 0);
	object oK39_plc_upper3 = GetObjectByTag("k39_plc_upper3", 0);
	object oK39_plc_top1 = GetObjectByTag("k39_plc_top1", 0);
	object oK39_plc_top2 = GetObjectByTag("k39_plc_top2", 0);
	object oK39_plc_top3 = GetObjectByTag("k39_plc_top3", 0);
	AssignCommand(oK39_plc_base2, ActionPlayAnimation(intGLOB_28, 1.0, 0.0));
	AssignCommand(oK39_plc_base3, ActionPlayAnimation(intGLOB_28, 1.0, 0.0));
	AssignCommand(oK39_plc_lower2, ActionPlayAnimation(intGLOB_28, 1.0, 0.0));
	AssignCommand(oK39_plc_lower3, ActionPlayAnimation(intGLOB_28, 1.0, 0.0));
	AssignCommand(oK39_plc_upper2, ActionPlayAnimation(intGLOB_28, 1.0, 0.0));
	AssignCommand(oK39_plc_upper3, ActionPlayAnimation(intGLOB_28, 1.0, 0.0));
	AssignCommand(oK39_plc_top2, ActionPlayAnimation(intGLOB_28, 1.0, 0.0));
	AssignCommand(oK39_plc_top3, ActionPlayAnimation(intGLOB_28, 1.0, 0.0));
	AssignCommand(oK39_plc_base1, ActionPlayAnimation(intGLOB_29, 1.0, 0.0));
	AssignCommand(oK39_plc_lower1, ActionPlayAnimation(intGLOB_29, 1.0, 0.0));
	AssignCommand(oK39_plc_upper1, ActionPlayAnimation(intGLOB_29, 1.0, 0.0));
	AssignCommand(oK39_plc_top1, ActionPlayAnimation(intGLOB_29, 1.0, 0.0));
}

void sub1(int intParam1) {
	SetGlobalBoolean("KOR_PILLAR_START", intParam1);
}

void main() {
	sub1(0);
	sub2();
}

