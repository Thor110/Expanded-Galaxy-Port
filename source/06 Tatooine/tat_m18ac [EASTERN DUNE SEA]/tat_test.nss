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

void main() {
	object oTat_bandon_talker = GetObjectByTag("tat_invis_talker", 0);
	object oTat_invis_talker2 = GetObjectByTag("tat_invis_talker2", 0);
	object oEntering = GetEnteringObject();
	int int1 = GetGlobalBoolean("TAT_CALO_TRIGGER_SET");
	int int3 = GetGlobalBoolean("TAT_BANDON_TRIG_SET");
	int nLocalBool = GetLocalBoolean(OBJECT_SELF, intGLOB_2);
	int int7 = GetLocalBoolean(OBJECT_SELF, intGLOB_3);
	if (((GetIsPC(oEntering) && (int1 != 0)) && (nLocalBool == 0))) {
		SetGlobalBoolean("TAT_CALO_TRIGGER_SET", 0);
		AssignCommand(oTat_bandon_talker, ActionStartConversation(OBJECT_SELF, "", 0, 0, 0, "", "", "", "", "", "", 0));
		SetLocalBoolean(OBJECT_SELF, intGLOB_2, 1);
	}
	else {
		if (((GetIsPC(oEntering) && (int3 != 0)) && (int7 == 0))) {
			oTat_bandon_talker = GetObjectByTag("tat_bandon_talker", 0);
			SetGlobalBoolean("TAT_BANDON_TRIG_SET", 0);
			AssignCommand(oTat_invis_talker2, ActionStartConversation(OBJECT_SELF, "", 0, 0, 0, "", "", "", "", "", "", 0));
			SetLocalBoolean(OBJECT_SELF, intGLOB_3, 1);
		}
	}
}

