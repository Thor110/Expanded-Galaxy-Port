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
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oNearestSTA_JUMP0_WP = GetNearestObjectByTag("STA_JUMP0_WP", OBJECT_SELF, 1);
	object oNearestSTA_JUMP1_WP = GetNearestObjectByTag("STA_JUMP1_WP", OBJECT_SELF, 1);
	object oNearestSTA_JUMP2_WP = GetNearestObjectByTag("STA_JUMP2_WP", OBJECT_SELF, 1);
	location location1 = GetLocation(GetNearestObjectByTag("STA_MOVE0_WP", OBJECT_SELF, 1));
	location location3 = GetLocation(GetNearestObjectByTag("STA_MOVE1_WP", OBJECT_SELF, 1));
	location location5 = GetLocation(GetNearestObjectByTag("STA_MOVE2_WP", OBJECT_SELF, 1));
	object oSta45a_assault = GetObjectByTag("sta45a_assault", 0);
	DelayCommand(6.0, AssignCommand(oSta45a_assault, PlaySound("c_drdmk1_slct")));
	sub1(7.0);
}

