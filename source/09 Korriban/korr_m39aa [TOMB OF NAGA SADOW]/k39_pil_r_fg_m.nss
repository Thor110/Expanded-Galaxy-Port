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
void sub5(object objectParam1, object objectParam2);
void sub4(int intParam1);
void sub3(int intParam1);
int sub2();
int sub1();

void sub5(object objectParam1, object objectParam2) {
	DelayCommand(0.1, AssignCommand(objectParam1, ActionPlayAnimation(intGLOB_28, 1.0, 0.0)));
	DelayCommand(0.2, AssignCommand(objectParam2, ActionPlayAnimation(intGLOB_29, 1.0, 0.0)));
	{
		object oK39_snd_pillxfer = GetObjectByTag("k39_snd_pillxfer", 0);
		SoundObjectPlay(oK39_snd_pillxfer);
	}
}

void sub4(int intParam1) {
	SetGlobalNumber("KOR_PILLARR", intParam1);
}

void sub3(int intParam1) {
	SetGlobalNumber("KOR_PILLARM", intParam1);
}

int sub2() {
	return GetGlobalNumber("KOR_PILLARR");
}

int sub1() {
	return GetGlobalNumber("KOR_PILLARM");
}

void main() {
	int int1 = sub1();
	int int3 = sub2();
	sub3((int1 + 1));
	sub4((int3 - 1));
	ActionPauseConversation();
	object oK39_plc_pillar1 = GetObjectByTag("k39_plc_pillar1", 0);
	object oK39_plc_pillar = GetObjectByTag("k39_plc_pillar", 0);
	object oK39_plc_pillar2 = GetObjectByTag("k39_plc_pillar2", 0);
	effect efBeam = EffectBeam(2037, oK39_plc_pillar2, 0, 0);
	ApplyEffectToObject(1, efBeam, oK39_plc_pillar, 1.0);
	ActionWait(1.0);
	object oK39_plc_top3 = GetObjectByTag("k39_plc_top3", 0);
	object oK39_plc_top2 = GetObjectByTag("k39_plc_top2", 0);
	sub5(oK39_plc_top3, oK39_plc_top2);
	ActionResumeConversation();
}

