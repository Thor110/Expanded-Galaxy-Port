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

// Prototypes
void sub1(float floatParam1);

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	object oDan_cut_zuulan = GetObjectByTag("dan_cut_zuulan", 0);
	object oDan_cut_droid1 = GetObjectByTag("dan_cut_droid1", 0);
	object oDan_cut_droid2 = GetObjectByTag("dan_cut_droid2", 0);
	object oNPC = GetPartyMemberByIndex(0);
	object object9 = GetPartyMemberByIndex(1);
	object object11 = GetPartyMemberByIndex(2);
	object oWp_ZuulanBike = GetObjectByTag("wp_ZuulanBike", 0);
	object oDan_zuulan_move2 = GetObjectByTag("dan_zuulan_move2", 0);
	float fFacing = GetFacing(oWp_ZuulanBike);
	float float3 = GetFacing(oDan_zuulan_move2);
	object oDan_alarm_obj = GetObjectByTag("dan_alarm_obj", 0);
	sub1(1.5);
	AssignCommand(oNPC, ClearAllActions());
	DelayCommand(0.3, AssignCommand(object9, SetFacing(fFacing)));
	DelayCommand(0.4, AssignCommand(object11, SetFacing(fFacing)));
	DelayCommand(0.2, AssignCommand(oDan_cut_zuulan, SetFacing(float3)));
	DelayCommand(0.3, AssignCommand(oDan_cut_droid1, SetFacing(float3)));
	DelayCommand(0.4, AssignCommand(oDan_cut_droid2, SetFacing(float3)));
	DelayCommand(2.0, SoundObjectStop(GetObjectByTag("dan_alarm", 0)));
	DelayCommand(2.0, AssignCommand(oDan_alarm_obj, PlayAnimation(201, 1.0, 0.0)));
}

